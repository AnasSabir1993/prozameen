using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;



/// <summary>
/// Summary description for AutoService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class AutoService : System.Web.Services.WebService
{

    public AutoService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public List<string> GetAreaNames(int ID)
    {
        DbConnection db = new DbConnection();

        SqlConnection connection = new SqlConnection(db.connectionString);
        connection.Open();

        ID = db.CityID;
        

        SqlCommand cmd = new SqlCommand("spGetmatchingAreasNames", connection);
        cmd.CommandType = CommandType.StoredProcedure;


        SqlParameter parameter = new SqlParameter("@locID", ID);
        cmd.Parameters.Add(parameter);

        List<string> Area_Names = new List<string>();

        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            if (dr.HasRows)
            {
                Area_Names.Add(dr["Area_Names"].ToString());
            }
        }
       
        return Area_Names;
    }


   }
