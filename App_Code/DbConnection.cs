using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for SqlConnection
/// </summary>
public class DbConnection
{
	public DbConnection()
	{
        connectionString = "Data Source=JP-PC;Initial Catalog=ProZameen;Integrated Security=True";        //Please change this	
	}
     public string connectionString
    {
        get; // A new way to create getter/setter
        set;
    }

     public int CityID
     {
         get;
         set;
     }

}
