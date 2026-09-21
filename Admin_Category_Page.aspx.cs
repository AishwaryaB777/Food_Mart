using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Template_ecom
{
    public partial class Admin_Category_Page : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string path = "~/Category_Photo/" + Category_Image.FileName;
            Category_Image.SaveAs(MapPath(path));
            string s = $"insert into Category values('{Category_Name.Text}', '{path}', '{Category_Description.Text}', 'Available')";
            int i = co.Non(s);
            if (i == 1)
            {
                Label11.Visible = true;
                Label11.Text = "Successfully Added";
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Failed to Add Category";
            }
        }
    }
}
