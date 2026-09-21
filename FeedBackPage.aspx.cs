using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class FeedBackPage : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string feedback = TextBox4.Text.Replace("'", "''");

            string s = $"insert into FeedBack values({Session["Pro_Id"]},{Session["id"]},'{feedback}','Unreplied','Active','{date}')";
            int c = co.Non(s);
            if (c == 1)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "❤️ Feedback submitted successfully!";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Write("UserHome.aspx");
        }
    }
}