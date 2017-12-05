using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditProperty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try 
        {
            Label1.Text = Session["ID"].ToString();
        }
        catch(Exception ex)
        {
            Response.Write("<Script>alert('An Error Occured') {0} </Script>" + ex.Message.ToString());
        }
        
    }
    
}