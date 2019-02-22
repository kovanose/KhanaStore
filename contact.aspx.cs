using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
       /* try
        {
            MailMessage Msg = new MailMessage("viratkohli.sam@gmail.com", "chandulella902@gmail.com");
            // Sender e-mail address.
            Msg.From = new MailAddress(txtEmail.Text);
            // Recipient e-mail address.
            Msg.To.Add("kvprasad505@gmail.com");
            Msg.Subject = txtSubject.Text;
            Msg.Body = txtBody.Text;
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("viratkohli.sam@gmail.com", "9000564874");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            //Msg = null;
            lblMessage.Text = "Thanks for Contact us";
            // Clear the textbox valuess
            txtName.Text = "";
            txtSubject.Text = "";
            txtBody.Text = "";
            txtEmail.Text = "";
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }*/
        String ToEmailAddress = "infokhanastore@gmail.com";
        //  string ToEmailAddress = tbEmailId.Text;
        //String Username = dt.Rows[0][1].ToString();
       // String EmailBody =txtBody.Text;
        MailMessage PassRecMail = new MailMessage("kvprasad505@gmail.com", ToEmailAddress);
        PassRecMail.From = new MailAddress(txtEmail.Text);
        PassRecMail.Body = txtBody.Text;
        PassRecMail.IsBodyHtml = true;
        PassRecMail.Subject = txtSubject.Text;
        SmtpClient SMTP = new SmtpClient();
        SMTP.Host = "smtp.gmail.com";
        SMTP.Port = 587;
        SMTP.Credentials = new NetworkCredential()
        {
            UserName = "kvprasad505@gmail.com",
            Password = "...."
        };
        SMTP.EnableSsl = true;
        SMTP.Send(PassRecMail);
       // lblPassRec.Text = "Check Your Email to Reset Your Password";
        //lblPassRec.ForeColor = Color.Green;
    }
}