using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;

using System.Text;
using System.Web;

namespace WebApplication1.BackEnd
{
    public class Email
    {
        string EBody;
        public string emailBody
        {
            get { return EBody; }
            set { EBody = value; }
        }
        public void sendEmail(string recipient, string sender, string body, string emailuser, string emailpassword)
        {
            MailMessage message = new MailMessage();

            message.To.Add(recipient);
            message.Subject = "Website Suggestion";
            message.From = new System.Net.Mail.MailAddress(recipient);

            message.Body = body;
            SmtpClient SmtpMail = new SmtpClient();
            SmtpMail.Host = "smtp.gmail.com"; //name or IP-Address of Host used for SMTP transactions
            SmtpMail.Port = 587; //Port for sending the mail
            SmtpMail.Credentials = new System.Net.NetworkCredential(emailuser, emailpassword); //username and password of network, if apply
            SmtpMail.DeliveryMethod = SmtpDeliveryMethod.Network;
            SmtpMail.EnableSsl = true;
            SmtpMail.ServicePoint.MaxIdleTime = 0;
            SmtpMail.ServicePoint.SetTcpKeepAlive(true, 2000, 2000);
            message.BodyEncoding = Encoding.Default;
            message.Priority = MailPriority.High;
            SmtpMail.Send(message);
        }
    }
}