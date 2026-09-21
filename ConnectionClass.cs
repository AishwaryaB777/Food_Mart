using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace Template_ecom
{
    public class ConnectionClass
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            con = new SqlConnection(@"server=DRAGON\SQLEXPRESS;database=project;Integrated Security=true");
        }
        public int Non(string sqlq)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlq, con);
            con.Open();
            int f = cmd.ExecuteNonQuery();
            con.Close();
            return f;
        }
        public string Scalar(string sqlq)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlq, con);
            con.Open();
            string d = cmd.ExecuteScalar().ToString();
            con.Close();
            return d;
        }
        public SqlDataReader dr(string sqlq)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlq, con);
            con.Open();
            SqlDataReader dw = cmd.ExecuteReader();
            return dw;
        }
        public DataSet ds(string sqlq)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            con.Open();
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataTable dt(string sqlq)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlq, con);
            con.Open();
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}