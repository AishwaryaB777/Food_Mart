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
    public partial class Admin_Users : System.Web.UI.Page
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
            string g = "select * from Users where Users_Status='Active'";
            DataSet ds = co.ds(g);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string s = $"update Users set Users_Status='Blocked' where Users_Status='Active' and Users_Id={id}";
            co.Non(s);
            dis();
        }
    }
}