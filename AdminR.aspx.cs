using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class AdminR : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string r = "select Max(Login_RegId) from Login";
            string g = co.Scalar(r);
            int newreg = 0;
            if(g=="")
            {
                newreg = 1;
            }
            else
            {
                int nregid = Convert.ToInt32(g) + 1;
                newreg = nregid;
            }
            string v = $"insert into Admin values({newreg},'{Admin_Name.Text}','{Admin_Email.Text}','{Admin_Address.Text}','{Admin_Username.Text}','{Admin_Password.Text}','Active')";
            int u = co.Non(v);
            if (u == 1)
            {
                string z = $"insert into Login values({newreg},'{Admin_Username.Text}','{Admin_Password.Text}','Admin')";
                int j = co.Non(z);
                if(j==1 && u == 1)
                {
                    Label9.Visible = true;
                    Label9.Text = "Successfully Registered";
                }
                else
                {
                    Label9.Visible = true;
                    Label9.Text = "Registration Failed";
                }
            }
        }
    }
}