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
    public partial class ViewProductUsers : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = $"select * from Products where Category_Id={Session["Cat_Id"]} and Products_Status='Available'";
                DataSet q = co.ds(s);
                ProductData.DataSource = q;
                ProductData.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            string c = e.CommandArgument.ToString();
            Session["Pro_Id"] = Convert.ToInt32(c);
            Response.Redirect("SingleProductView.aspx");
        }
    }
}