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
    public partial class Admin_Edit_Categroy : System.Web.UI.Page
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
            string s = "select Category_Id, Category_Name, Category_Image, Category_Description, Category_Status from Category";
            DataSet q = co.ds(s);
            Category_View.DataSource = q;
            Category_View.DataBind();
        }

        protected void Category_View_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Category_View.EditIndex = e.NewEditIndex;
            dis();
        }

        protected void Category_View_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }

        protected void Category_View_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int g = Convert.ToInt32(Category_View.DataKeys[i].Value);
            TextBox Des = (TextBox)Category_View.Rows[i].Cells[4].Controls[0];
            TextBox Sta = (TextBox)Category_View.Rows[i].Cells[5].Controls[0];
            FileUpload fu = (FileUpload)Category_View.Rows[i].FindControl("CateImage");
            string path = "";
            if (fu.HasFile)
            {
                path = "~/Category_Photo/" + fu.FileName;
                fu.SaveAs(Server.MapPath(path));
            }
            string v = $"update Category set Category_Image='{path}',Category_Description='{Des.Text}', Category_Status='{Sta.Text}' where Category_Id={g}";
            int x = co.Non(v);
            Category_View.EditIndex = -1;
            dis();
        }

        protected void Category_View_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Category_View.EditIndex = -1;
            dis();
        }
    }
}