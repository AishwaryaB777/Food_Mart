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
    public partial class ViewCart1 : System.Web.UI.Page
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
            string s = $"SELECT dbo.Products.Products_id, dbo.Products.Products_Title, dbo.Products.Products_Photo, dbo.Products.Products_Price, dbo.Cart.Cart_Id ,dbo.Cart.Cart_Quantity, dbo.Cart.Cart_SubTotal FROM dbo.Cart INNER JOIN dbo.Products ON dbo.Cart.Products_Id = dbo.Products.Products_id where dbo.Cart.Users_Id={Session["id"]} and dbo.Cart.Cart_Status=1";
            DataSet v = co.ds(s);
            GridView1.DataSource = v;
            GridView1.DataBind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int g = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox quantity = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];
            string r = $"SELECT dbo.Products.Products_id FROM dbo.Cart INNER JOIN dbo.Products ON dbo.Cart.Products_Id = dbo.Products.Products_id where dbo.Cart.Users_Id={Session["id"]} and dbo.Cart.Cart_Status=1";
            string x = co.Scalar(r);
            string h = $"select Products_Price from Products where Products_id={x}";
            string b = co.Scalar(h);
            int calc = Convert.ToInt32(quantity.Text) * Convert.ToInt32(b);
            string c = $"update Cart set Cart_Quantity={quantity.Text}, Cart_SubTotal={calc} where Cart_Id={g}";
            co.Non(c);
            GridView1.EditIndex = -1;
            dis();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            dis();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            dis();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int g = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string s = $"delete from Cart where Cart_Id={g}";
            int h = co.Non(s);
            dis();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string query = $"select Products_Id from Cart where Users_Id={Session["id"]} and Cart_Status=1";
            SqlDataReader dr = co.dr(query);

            List<int> prdlis = new List<int>();

            string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            while (dr.Read())
            {
                prdlis.Add(Convert.ToInt32(dr["Products_Id"]));
            }

            foreach (int p in prdlis)
            {
                string query1 = $"select Cart_Quantity, Cart_SubTotal from Cart where Products_Id={p} and Users_Id={Session["id"]}";

                SqlDataReader dr1 = co.dr(query1);

                int quan = 0, subtot = 0;

                while (dr1.Read())
                {
                    quan = Convert.ToInt32(dr1["Cart_Quantity"]);
                    subtot = Convert.ToInt32(dr1["Cart_SubTotal"]);
                }

                string query2 = $"insert into Orders values({p}, {Session["id"]}, {quan}, {subtot}, 'Order','{date}')";
                co.Non(query2);

                string query3 = $"update Cart set Cart_Status=0 where Products_Id={p} and Users_Id={Session["id"]} and Cart_Status=1";
                co.Non(query3);
            }

            string query4 = $"select sum(Order_SubTotal) from Orders where Users_Id={Session["id"]} and Order_Status='Order'";

            string grandtot = co.Scalar(query4);
            int grandtotal = Convert.ToInt32(grandtot);
            Session["gt"] = grandtotal;
            string query5 = $"insert into Bill values({Session["id"]},{grandtotal},'{date}')";
            co.Non(query5);

            Response.Redirect("ViewBill.aspx");
        }
    }
}