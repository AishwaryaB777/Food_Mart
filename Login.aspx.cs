using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string g = "select max(Login_RegId) from Login";
            string p = co.Scalar(g);
            int regid = 0;
            if (p == "")
            {
                regid = 1;
            }
            else
            {
                int nregid = Convert.ToInt32(p) + 1;
                regid = nregid;
            }
            string s = $"insert into Users values({regid},'{TextBox1.Text}',{TextBox12.Text},{TextBox9.Text},'{TextBox4.Text}','{TextBox5.Text}',{TextBox10.Text},'{TextBox7.Text}','{TextBox8.Text}','Active')";
            int i = co.Non(s);
            if (i == 1)
            {
                string b = $"insert into Login values({regid},'{TextBox7.Text}','{TextBox8.Text}','User')";
                int v = co.Non(b);
                if (i == 1 && v == 1)
                {
                    Label11.Visible = true;
                    Label11.Text = "Successfully Registered";
                }
                else
                {
                    Label11.Visible = true;
                    Label11.Text = "Registration Failed";
                }
            }

        }
    }
}