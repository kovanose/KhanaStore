using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btPassRec_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from users where Email='" + tbEmailId.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);
                cmd1.ExecuteNonQuery();

                //send Email

                
                String ToEmailAddress = dt.Rows[0][3].ToString();
              //  string ToEmailAddress = tbEmailId.Text;
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password <br/><br/> http://localhost:52851/RecoverPassword.aspx?Uid="+myGUID;
                 MailMessage PassRecMail = new MailMessage("kvprasad505@gmail.com",ToEmailAddress);
                 PassRecMail.Body = EmailBody;
                 PassRecMail.IsBodyHtml = true;
                 PassRecMail.Subject = "Reset Password";
                 SmtpClient SMTP = new SmtpClient();
                SMTP.Host="smtp.gmail.com";
                SMTP.Port=587;
                SMTP.Credentials=new NetworkCredential()
                {
                    UserName = "kvprasad505@gmail.com",
                    Password = "....."
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);
                lblPassRec.Text = "Check Your Email to Reset Your Password";
                lblPassRec.ForeColor = Color.Green;
            }
            else
            {
                lblPassRec.Text = "OOPS This Email Id does not exist in our DataBase";
                lblPassRec.ForeColor = Color.Red;
            }
        }
    }
}