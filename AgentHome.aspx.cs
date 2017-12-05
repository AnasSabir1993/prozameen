using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class AgentHome : System.Web.UI.Page
{
    DbConnection db = new DbConnection();

    int Id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["Pro"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);

            try
            {
                // cmd.CommandType = CommandType.StoredProcedure;
                string Name = Session["Name"].ToString();
                string q = "SELECT UserId FROM Users where Username ='" + Name + "' ;";
                SqlCommand cmd = new SqlCommand(q,con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    if (dr.HasRows)
                    {
                        Id = dr.GetInt32(0);
                        Session["ID"] = Id;
                    }
                    else
                    {
                        string message = "Unable to Fetch UserId";
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + ex.Message.ToString() + "');", true);
            }
            finally
            {
                con.Close();
            }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
     SqlConnection connection = new SqlConnection(db.connectionString);
     
        try
            {
                connection.Open();
                string query = "insert into Property(USerId,Property_Title,Property_Type,Property_City,Property_Location,Property_Address,Property_Description,Property_Price,Property_Size,Property_Unit,ContactNo) values(" + Id + ", '" + txtTitle.Text + "','" + txtType.Text + "','" + txtCity.Text + "','" + txtLocation.Text + "','" + txtAddress.Text + "','" + txtDescription.Text + "','" + txtPrice.Text + "','" + txtSize.Text + "','" + txtUnit.Text + "','" + txtContactNo.Text + "')";
                //SqlDataAdapter da = new SqlDataAdapter(query, connection);

                SqlCommand cmd = new SqlCommand(query, connection);

                cmd.ExecuteNonQuery();
               
                Response.Write("Data saved successfully.");

                txtTitle.Text = "";
                txtType.Text = "";
                txtCity.Text = "";
                txtLocation.Text = "";
                txtAddress.Text = "";
                txtDescription.Text = "";
                txtPrice.Text = "";
                txtSize.Text = "";
                txtUnit.Text = "";
                txtContactNo.Text = "";
           
            }
            catch(Exception ex)
            {
               
                 Response.Write("<script>alert('Error while saving data.')</script>" + ex.ToString());
            }
        finally
        {
            connection.Close();
        }

       
        
    }
}