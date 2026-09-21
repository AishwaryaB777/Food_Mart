using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Template_ecom
{
    public partial class SingleProductView : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = $"select * from Products where Products_id={Session["Pro_Id"]}";
                SqlDataReader x = co.dr(s);
                while(x.Read())
                {
                    Image1.ImageUrl = x["Products_Photo"].ToString();
                    Label9.Text = x["Products_Title"].ToString();
                    Label10.Text = x["Products_Description"].ToString();
                    Label11.Text = x["Products_Price"].ToString();
                }
                string q = $"select Products_Stock from Products where Products_id={Session["Pro_Id"]}";
                string v = co.Scalar(q);
                int f = Convert.ToInt32(v);
                for (int i = 1; i <= f; i++)
                {
                    DropDownList1.Items.Add(i.ToString());
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label14.Text = DropDownList1.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int subt = Convert.ToInt32(DropDownList1.SelectedItem.Value)* Convert.ToInt32(Label11.Text);
            string b = $"insert into Cart values({Session["Pro_Id"]},{Session["id"]}, {DropDownList1.SelectedItem.Value},{subt},{1})";
            int val = co.Non(b);
            if (val == 1)
            {
                Label13.Visible = true;
                Label13.Text = "Item Added";
            }
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedBackPage.aspx");
        }
    }
}