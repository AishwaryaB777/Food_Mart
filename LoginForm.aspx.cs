using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class LoginForm : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = $"select count(Login_RegId) from Login where Login_Username='{Login_Username.Text}' and Login_Password='{Login_Password.Text}'";
            string g = co.Scalar(s);
            if (g == "1")
            {
                string k = $"select Login_RegId from Login where Login_Username='{Login_Username.Text}' and Login_Password='{Login_Password.Text}'";
                string h = co.Scalar(k);
                Session["id"] = h;
                string c = $"select Login_Types from Login where Login_Username='{Login_Username.Text}' and Login_Password='{Login_Password.Text}'";
                string n = co.Scalar(c);
                string logst = $"select Users_Status from Users where Users_Username='{Login_Username.Text}' and Users_Password='{Login_Password.Text}'";
                string lgs = co.Scalar(logst);
                if (n == "User" && lgs=="Active")
                {
                    Label9.Visible = true;
                    Label9.Text = "Login Successfull";
                    Response.Redirect("UserHome.aspx");
                }
                else if(n=="Admin")
                {
                    Label9.Visible = true;
                    Label9.Text = "Login Successfull";
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Label9.Visible = true;
                    Label9.Text = "You have been blocked by the Admin!";
                }
            }
            else
            {
                Label9.Visible = true;
                Label9.Text = "Login Failed";
            }
        }
    }
}