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
    public partial class ViewBill : System.Web.UI.Page
    {
        ConnectionClass co=new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dis();
                string querys = $"SELECT Users_Name,Users_Address,Users_Phone FROM Users WHERE Users_Id={Session["id"]}";
                SqlDataReader dr = co.dr(querys);
                while (dr.Read())
                {
                    Label3.Text = dr["Users_Name"].ToString();
                    Label4.Text= dr["Users_Address"].ToString();
                    Label5.Text= dr["Users_Phone"].ToString();
                }
                string querys1 = $"SELECT Bill_Date,Total_Amount FROM Bill WHERE Bill_Id=(select max(Bill_Id) from Bill)";
                SqlDataReader dr1 = co.dr(querys1);
                while (dr1.Read())
                {
                    Label2.Text = dr1["Bill_Date"].ToString();
                    Label1.Text = dr1["Total_Amount"].ToString();
                }
            }
        }
        public void dis()
        {
            string querys = $"SELECT MAX(Order_Id) FROM Orders WHERE Users_Id={Session["id"]}";
            string orderid = co.Scalar(querys);

            Session["order_id"] = orderid;

            string query = $"SELECT " +
                           $"dbo.Products.Products_id, " +
                           $"dbo.Products.Products_Title, " +
                           $"dbo.Orders.Order_Id, " +
                           $"dbo.Orders.Order_Quantity, " +
                           $"dbo.Orders.Order_SubTotal " +
                           $"FROM dbo.Orders " +
                           $"INNER JOIN dbo.Products " +
                           $"ON dbo.Orders.Products_Id = dbo.Products.Products_id " +
                           $"WHERE dbo.Orders.Users_Id={Session["id"]} " +
                           $"AND dbo.Orders.Order_Id >= " +
                           $"(SELECT MAX(Order_Id) - 2 FROM Orders WHERE Users_Id={Session["id"]}) " +
                           $"AND dbo.Orders.Order_Id <= " +
                           $"(SELECT MAX(Order_Id) FROM Orders WHERE Users_Id={Session["id"]})";

            DataSet ds = co.ds(query);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}