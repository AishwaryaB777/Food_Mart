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
    public partial class Payment : System.Web.UI.Page
    {
        ConnectionClass co = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            PaymentReference.ServiceClient ob = new PaymentReference.ServiceClient();
            string bal = ob.CheckBalance(TextBox1.Text);
            int bala = Convert.ToInt32(bal);
            int gts = Convert.ToInt32(Session["gt"]);
            if (bala > gts)
            {
                int Amount = bala - gts;
                string s = $"update Account set Balance_Amount={Amount} where Users_Id={Session["id"]} and Account_Number={TextBox1.Text}";
                co.Non(s);
                Label1.Visible = true;
                Label1.Text = "Payment Successfull!";
                string c = $"select Products_Id from Orders where Users_Id={Session["id"]} and Order_Status='Order'";
                SqlDataReader dr = co.dr(c);
                List<int> prdlis = new List<int>();
                while (dr.Read())
                {
                    prdlis.Add(Convert.ToInt32(dr["Products_Id"]));
                }
                foreach(int pid in prdlis)
                {
                    string v = $"Update Orders set Order_Status='Paid' where Users_Id={Session["id"]} and Order_Status='Order' and Products_Id={pid}";
                    co.Non(v);
                    string b = $"select Products_Stock from Products where Products_Id={pid}";
                    string b1 = co.Scalar(b);
                    int oldstock = Convert.ToInt32(b1);
                    string a = $"select Order_Quantity from Orders where Users_id={Session["id"]} and Order_Status='Paid' and Products_Id={pid}";
                    string a1 = co.Scalar(a);
                    int quantity = Convert.ToInt32(a1);
                    int stock = oldstock - quantity;
                    string g = $"update Products set Products_Stock={stock} where Products_Id={pid}";
                    co.Non(g);
                }
            
            }
            else
            {
                Label1.Visible = true;
            }
        }
    }
}