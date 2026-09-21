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
    public partial class Admin_Edit_Products : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dis();
            }
        }
        public void dis()
        {
            string s = "select Products_id, Products_Title, Products_Photo, Products_Description, Products_Price, Products_Status, Products_Stock from Products";
            DataSet q = co.ds(s);
            Product_View.DataSource = q;
            Product_View.DataBind();
        }

        protected void Product_View_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Product_View.EditIndex = -1;
            dis();
        }

        protected void Product_View_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Product_View.EditIndex = e.NewEditIndex;
            dis();
        }

        protected void Product_View_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int g = Convert.ToInt32(Product_View.DataKeys[i].Value);
            TextBox Des = (TextBox)Product_View.Rows[i].Cells[4].Controls[0];
            TextBox Sta = (TextBox)Product_View.Rows[i].Cells[6].Controls[0];
            TextBox Pri= (TextBox)Product_View.Rows[i].Cells[5].Controls[0];
            TextBox Sto = (TextBox)Product_View.Rows[i].Cells[7].Controls[0];
            FileUpload fu = (FileUpload)Product_View.Rows[i].FindControl("ProductImage");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/Product_Photo/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string v = $"update Products set Products_Photo='{path}',Products_Description='{Des.Text}', Products_Price={Pri.Text}, Products_Stock={Sto.Text}, Products_Status='{Sta.Text}' where Products_id={g}";
            int x = co.Non(v);
            Product_View.EditIndex = -1;
            dis();
        }

        protected void Product_View_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            Product_View.PageIndex = e.NewPageIndex;
            dis();
        }
    }
}