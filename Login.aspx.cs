using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string pwd = txtPassword.Text;
        DataTable dt = new DataTable();
        string constr = ConfigurationManager.ConnectionStrings["Pro"].ConnectionString;

        using (SqlConnection con = new SqlConnection(constr))
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            // cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SELECT Username, Password FROM Users where Username ='" + username + "' and Password='" + pwd + "' ;";
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            try
            {

                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    SqlConnection conn = new SqlConnection(constr);
                    conn.Open();
                    //DateTime myDateTime = DateTime.Now;
                    //string sqlFormattedDate = myDateTime.ToString("yyyy-MM-dd HH:mm:ss.fff");
                    string q = "Update Users Set LastLoginDate = GetDate() where Username = '" + txtUsername.Text + "';";

                    SqlCommand cmd1 = new SqlCommand(q,conn);

                    cmd1.ExecuteNonQuery();

                    conn.Close();
                    Session["Name"] = txtUsername.Text;
                    Response.Redirect("AgentHome.aspx");
                    
                }
                else
                {
                    string message = "Invalid username or password";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
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
    }
}