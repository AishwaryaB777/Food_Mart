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
    public partial class Admin_Product_Page : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        SqlConnection con = new SqlConnection(@"server=DRAGON\SQLEXPRESS;database=project;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = $"select Category_Id, Category_Name from Category";
                DataSet q = co.ds(s);
                ProductDropDown.DataSource = q;
                ProductDropDown.DataTextField = "Category_Name";
                ProductDropDown.DataValueField = "Category_Id";
                ProductDropDown.DataBind();
                ProductDropDown.Items.Insert(0, "--Select--");
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string path = "~/Product_Photo/" + Product_Image.FileName;
            Product_Image.SaveAs(MapPath(path));
            string f = $"insert into Products values({ProductDropDown.SelectedItem.Value},'{Product_Name.Text}','{path}','{Product_Description.Text}',{Product_price.Text},'Available',{Product_Stock.Text})";
            int i = co.Non(f);
            if (i == 1)
            {
                Label13.Visible = true;
                Label13.Text = "Successfully Added";
            }
            else
            {
                Label13.Visible = true;
                Label13.Text = "Failed to Add Category";
            }
        }
    }
}