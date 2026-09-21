using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class Account_Insertion : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = $"insert into Account values({Session["id"]},'{DropDown1.SelectedItem.Text}', {TextBox1.Text}, {TextBox2.Text})";
            Response.Write(s);
            int k = co.Non(s);
            if (k == 1)
            {
                Response.Redirect("Payment.aspx");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string s = $"select count(Account_Id) from Account where Account_Number={TextBox1.Text}";
            string q = co.Scalar(s);
            Response.Write(q);
            if (Convert.ToInt32(q)>=1)
            {
                Label1.Visible = true;
            }
        }
    }
}