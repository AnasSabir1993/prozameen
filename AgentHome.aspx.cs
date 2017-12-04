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
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
     SqlConnection connection = new SqlConnection(db.connectionString);
     
        try
            {

                int Id = 1;
                connection.Open();
                string query = "insert into Property(USerId,Property_Title,Property_Type,Property_City,Property_Location,Property_Address,Property_Description,Property_Price,Property_Size,Property_Unit,ContactNo) values(" + Id + ", '" + txtTitle.Text + "','" + txtType.Text + "','" + txtCity.Text + "','" + txtLocation.Text + "','" + txtAddress.Text + "','" + txtDescription.Text + "','" + txtPrice.Text + "','" + txtSize.Text + "','" + txtUnit.Text + "','" + txtContactNo.Text + "')";
                //SqlDataAdapter da = new SqlDataAdapter(query, connection);

                SqlCommand cmd = new SqlCommand(query, connection);

                cmd.ExecuteNonQuery();
               
                Response.Write("Data saved successfully.");
            }
            catch(Exception ex)
            {
               
                 Response.Write("Error while saving data." + ex.ToString());
            }
        finally
        {
            connection.Close();
        }

       
        
    }
}