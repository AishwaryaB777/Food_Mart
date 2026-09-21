using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace Template_ecom
{
    public partial class AdminFeedback : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = @"SELECT * FROM FeedBack INNER JOIN Users ON FeedBack.Users_Id = Users.Users_Id where FeedBack_Status='Active'";
                DataSet ds = co.ds(query);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ReplyFeedback")
            {
                Panel1.Visible = true;

                string userId = e.CommandArgument.ToString();
                Session["userid"] = userId;
                string query = @"SELECT 
                                    Users.Users_Email,
                                    FeedBack.FeedBack_Message
                                 FROM FeedBack
                                 INNER JOIN Users
                                 ON FeedBack.Users_Id = Users.Users_Id
                                 WHERE FeedBack.Users_Id = " + userId;

                DataSet ds = co.ds(query);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtToEmail.Text =
                        ds.Tables[0].Rows[0]["Users_Email"].ToString();

                    txtAnswer.Text = "";
                }
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string toEmail = txtToEmail.Text;
            string answer = txtAnswer.Text;

            if (string.IsNullOrWhiteSpace(answer))
            {
                Response.Write(
                    "<script>alert('Please enter your response.');</script>"
                );

                return;
            }


            string subject = "Reply to your FoodMart Feedback";


            string body = @"
                <html>
                <body>

                    <h2>FoodMart</h2>

                    <p>Dear Customer,</p>

                    <p>
                        Thank you for contacting us.
                    </p>

                    <p>" + answer + @"</p>

                    <br />

                    <p>
                        If you have any further questions, please feel free to contact us.
                    </p>

                    <p>
                        Regards,<br />
                        FoodMart Admin
                    </p>

                </body>
                </html>";


            try
            {
                SendEmail2(
                    "FoodMart Admin",
                    "baishwarya920@gmail.com",
                    "kqjv ypvr lgwq meia",
                    "Customer",
                    toEmail,
                    subject,
                    body
                );


                Panel1.Visible = false;

                txtToEmail.Text = "";
                txtAnswer.Text = "";


                Response.Write(
                    "<script>alert('Reply sent successfully.');</script>"
                );

                string s = $"update FeedBack set FeedBack_Reply={txtAnswer.Text}, FeedBack_Status='Inactive' where Users_Id={Session["userid"]} and FeedBack_Status='Active'";
                co.Non(s);
            }
            catch (Exception ex)
            {
                Response.Write(
                    "<script>alert('Error sending email: " +
                    ex.Message.Replace("'", "") +
                    "');</script>"
                );
            }
        }


        // ==========================================
        // SEND EMAIL METHOD
        // ==========================================

        public static void SendEmail2(
            string yourName,
            string yourGmailUserName,
            string yourGmailPassword,
            string toName,
            string toEmail,
            string subject,
            string body)
        {
            string to = toEmail;

            string from = yourGmailUserName;

            MailMessage message = new MailMessage(from, to);


            string mailbody = body;

            message.Subject = subject;

            message.Body = mailbody;

            message.BodyEncoding = Encoding.UTF8;

            message.IsBodyHtml = true;


            // Gmail SMTP
            SmtpClient client =
                new SmtpClient("smtp.gmail.com", 587);


            System.Net.NetworkCredential basicCredential1 =
                new System.Net.NetworkCredential(
                    yourGmailUserName,
                    yourGmailPassword
                );


            client.EnableSsl = true;

            client.UseDefaultCredentials = false;

            client.Credentials = basicCredential1;


            try
            {
                client.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}