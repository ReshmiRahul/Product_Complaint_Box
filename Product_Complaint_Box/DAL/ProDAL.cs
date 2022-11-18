using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Product_Complaint_Box.DAL
{
    public class ProDAL
    {
        public SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        public ProDAL()
        {
            string conn = ConfigurationManager.ConnectionStrings["complaint"].ConnectionString;
            con = new SqlConnection(conn);
            cmd.Connection = con;
        }
        public SqlConnection Getcon()
        {
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
        public int registrationInsert(BAL.ProBAL obj)
        {
            string qry = "insert into Userdetails values('" + obj.Name + "','" + obj.Email + "','" + obj.Phone_Number + "')";
            SqlCommand cmd = new SqlCommand(qry, Getcon());

            return cmd.ExecuteNonQuery();

        }
        public int logininsert(BAL.ProBAL obj)
        {


            string qry1 = "insert into Login values('" + obj.Name + "','" + obj.Password + "','user','Not_Confirmed')";
            SqlCommand cmd = new SqlCommand(qry1, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public int productinsert(BAL.ProBAL obj)
        {
            string qry = "insert into Product values('" + obj.Product_Name + "'," + obj.Price + ")";
            SqlCommand cmd = new SqlCommand(qry, Getcon());

            return cmd.ExecuteNonQuery();

        }
        public DataTable viewregistration()
        {
            string s = "Select * from Login where Status='Not_Confirmed'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int userApprove(BAL.ProBAL obj)
        {
            string s = "update login set Status='Confirmed' where login_id='" + obj.login_id + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();

        }
        public DataTable PageLogin(BAL.ProBAL obj)
        {
            string qry3 = "SELECT * FROM Login WHERE Username ='" + obj.Name + "' AND Password='" + obj.Password + "'";
            SqlCommand cmd = new SqlCommand(qry3, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable ProdView()
        {
            string s = "select *from Product";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;



        }
        public DataSet ProdIdView()
        {
            string s = "select *from Product";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;



        }
        public int Complaint(BAL.ProBAL obj)
        {
            string qry2 = "insert into Complaint(User_Id,Username,Product_Id,Complaint,Status,Date) values('" + obj.login_id + "','" + obj.Name + "','" + obj.ProductId + "','" + obj.Complaint + "','Notyet',GETDATE() )";
            SqlCommand cmd = new SqlCommand(qry2, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public int QueryInsert(BAL.ProBAL obj)
        {
            string qry2 = "insert into Query(Product_Id,User_Id,Username,Query,Status) values('" + obj.ProductId + "','" + obj.login_id + "','" + obj.Name + "','" + obj.ProductQuery + "','Not Replied')";
            SqlCommand cmd = new SqlCommand(qry2, Getcon());
            return cmd.ExecuteNonQuery();
        }
        public DataTable GetProductDetails(BAL.ProBAL obj)
        {
            string qry2 = "select * from Product";
            SqlCommand cmd = new SqlCommand(qry2, Getcon());
            DataTable ds = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            dataAdapter.Fill(ds);
            return ds;
        }
        public DataTable complaintview(BAL.ProBAL obj)
        {
            string s = "select * from Complaint where Status='NotYet' AND Date >='" + obj.Fromdate + "' AND Date <='" + obj.Todate + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable Allcomplaintview(BAL.ProBAL obj)
        {
            string s = "select * from Complaint"; 
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int complaintApprove(BAL.ProBAL obj)
        {
            string s = "update Complaint set Status='InProcess' where C_Id='" + obj.C_Id + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();

        }
        public DataTable complaintinprocess(BAL.ProBAL obj)
        {
            string s = "select * from Complaint where Status='InProcess' AND Date >='" + obj.Fromdate + "' AND Date <='" + obj.Todate + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int complaintclose(BAL.ProBAL obj)
        {
            string s = "update Complaint set Status='Closed' where C_Id='" + obj.C_Id + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();

        }
        public DataTable MyComplaintview(BAL.ProBAL obj)
        {
            string s = "select * from Complaint where User_id='"+obj.login_id+"'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable queryview(BAL.ProBAL obj)
        {
            string s = "select * from Query where Status='Not Replied'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public int queryreply(BAL.ProBAL obj)
        {
            
            string s = "update Query set Reply='"+obj.Reply+"',Status='Replied' where Query_id='" + obj.Query_id + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            return cmd.ExecuteNonQuery();

        }
        public DataTable MyQueryview(BAL.ProBAL obj)
        {
            string s = "select * from Query where User_id='" + obj.login_id + "'";
            SqlCommand cmd = new SqlCommand(s, Getcon());
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
   
}