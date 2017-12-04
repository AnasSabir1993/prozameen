using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string[] CityNames = new[] { "--Select--", "Karachi", "Islamabad", "Lahore", "Peshawar", "Multan" };

            //for (int i = 0; i < CityNames.Length;i++ )
            //{
            //    ddlCity.Items.Add(CityNames[i]);
            //}
            DbConnection db = new DbConnection();
            SqlConnection connection = new SqlConnection(db.connectionString);

             using (SqlCommand cmd = new SqlCommand("select City_Id, City_Name from City"))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = connection;
                connection.Open();
                ddlCity.DataSource = cmd.ExecuteReader();
                ddlCity.DataTextField = "City_Name";
                ddlCity.DataValueField = "City_Id";
                ddlCity.DataBind();
                connection.Close();
            }
             ddlCity.Items.Insert(0, new ListItem("--Select City--", "0"));
        }
       

        

        else
        {
            // code when post back 
        }


        //if (!IsPostBack)
        //{
        
        //    DbConnection db = new DbConnection();
        //    SqlConnection connection = new SqlConnection(db.connectionString);
        //    connection.Open();
        //    SqlCommand cmd = new SqlCommand("SELECT Homes FROM Catgory ", connection);
        //    SqlDataReader dr = cmd.ExecuteReader();
        //    while (dr.Read())
        //    {
        //        ddlCat.Items.Add(new ListItem(dr[0].ToString()));
        //    }
        //    connection.Close();
        //}

        //else
        //{
        //    // code when post back 
        //}

    }



    [System.Web.Services.WebMethod]
    public static string GetCurrentTime(string name)
    {
        return "Hello " + name + Environment.NewLine + "The Current Time is: "
            + DateTime.Now.ToString();

    }


    [System.Web.Services.WebMethod]
    //[System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static List<FillDropDown> FillAreas(string ID)
    {
        string constr = ConfigurationManager.ConnectionStrings["Pro"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Area_Id,Area_Names From Areas"))
            {
                cmd.Connection = con;
                List<FillDropDown> ddl = new List<FillDropDown>();
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        ddl.Add(new FillDropDown
                        {
                            ID = sdr["Area_Id"].ToString(),
                            Values = sdr["Area_Names"].ToString(),
                           
                        });
                    }
                }
                con.Close();
                return ddl;
            }
        }

    }

    public class FillDropDown
    {
        public string ID { get; set; }
        public string Values { get; set; }
    }


    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        DbConnection db = new DbConnection();

        if (ddlCity.SelectedItem.Value.Equals("Karachi"))
        {
            db.CityID = 1;
        }
    }

}