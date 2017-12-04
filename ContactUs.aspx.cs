using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {

        using (MailMessage mm = new MailMessage(fromaddress.Text, toaddress.Text))
        {
            mm.Subject = subject.Text;

            string msg = "Name: " + name.Text + "\n\nEmail Address: " + email.Text + "\n\nMessage: " + comments.Text;
            mm.Body = msg;
            /*       if (fuAttachment.HasFile)
                   {
                       string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                       mm.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
                   }
              */
            try
            {
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(fromaddress.Text, pass.Text);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
            catch (Exception ex)
            {
                //ClientScriptManager cs = this.ClientScript;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                //cs.RegisterStartupScript(this.GetType(), "alert", "alert('Somethng went wrong. Try again in few minutes');", true);
                //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Somethng went wrong. Try again in few minutes');", true);

            }
            //Response.Write("<script>alert('');</script>");
            //ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Thanks for Messaging Us! \nWe will contact you soon.');", true);
            //ClientScriptManager cs1 = this.ClientScript;
            //cs1.RegisterStartupScript(this.GetType(), "alert", "alert('Thanks for Messaging Us! \nWe will contact you soon.');", true);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thanks for Messaging Us! \nWe will contact you soon.')", true);
        }
       
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        name.Text = "";
        email.Text = "";
        subject.Text = "";
        comments.Text = "";
    }
}