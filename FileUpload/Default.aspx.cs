using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FileUpload
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToUpper() != ".DOC" && fileExtension.ToUpper() != ".DOCX")
                {
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Only files with .doc and .docx extension are allowed";
                }
                else
                {
                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "File uploaded successfully";
                    }
                }
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please select a file";
            }
        }

        public static void SendEmail(string emailbody)
        {
            #region
            /*
            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("suvarnait89@gmail.com", "dhanasekar.sdk@gmail.com");
            // Specify the email body
            mailMessage.Body = emailbody;
            // Specify the email Subject
            mailMessage.Subject = "Test Email";

            // Specify the SMTP server name and post number
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            // Specify your gmail address and password
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "suvarnait89@gmail.com",
                Password = "Mist4rw@1"
            };
            // Gmail works on SSL, so set this property to true
            smtpClient.EnableSsl = true;
            // Finall send the email message using Send() method
            smtpClient.Send(mailMessage);
            */

            #endregion

            //MailMessage mailMessage = new MailMessage("suvarnait89@gmail.com", "suvarnait89@gmail.com");
            //mailMessage.Subject = "Test email";
            //mailMessage.Body = emailbody;

            //SmtpClient smtpClient = new SmtpClient();
            //smtpClient.Send(mailMessage);






            string emailaddress = "suvarn@gmail.com";
            string password = "lgioehkvchemfkrw"; // ConfigurationManager.AppSettings["password"];

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(emailaddress);
            mail.To.Add(emailaddress);
            mail.Subject = "Hi";
            mail.To.Add(emailaddress);
            mail.Body = "<html><body>Test Body </body></html>";
            mail.IsBodyHtml = true;


            var smtpClient = new SmtpClient("smtp.gmail.com")
            {
                Port = 587,
                Credentials = new NetworkCredential(emailaddress, password),
                EnableSsl = true,
            };

            smtpClient.Send(mail);
        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            string sendEmail = ConfigurationManager.AppSettings["SendEmail"];
            if (sendEmail.ToLower() == "true")
            {
                SendEmail(TextBox1.ToString());
            }
        }
    }
}