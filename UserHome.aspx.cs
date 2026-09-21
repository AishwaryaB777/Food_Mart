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
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = $"select * from Category where Category_Status='Available'";
                DataSet q = co.ds(s);
                Category_Data.DataSource = q;
                Category_Data.DataBind();
            }
        }
        protected void ImageButton1_Command1(object sender, CommandEventArgs e)
        {
            string c = e.CommandArgument.ToString();
            Session["Cat_Id"] = Convert.ToInt32(c);
            Response.Redirect("ViewProductUsers.aspx");
        }
    }
}