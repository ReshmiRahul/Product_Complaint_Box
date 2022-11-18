using Product_Complaint_Box.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Product_Complaint_Box.BAL
{
    public class ProBAL
    {
        DAL.ProDAL objpro1 = new DAL.ProDAL();
       
        private string _name;
        private string _email;
        private string _password;
        private string _phone;
        private string _productname;
        private string _prize;
        private string _login_id;
        private int _proId;
        private string _complaint;
        private string _query;
        private string _todate;
        private string _fromdate;
        private string _c_id;
        private string _query_id;
        private string _rply;

        public string Product_Name
        {
            get
            {
                return _productname;
            }
            set
            {
                _productname = value;
            }
        }
        public string Price
        {
            get
            {
                return _prize;
            }
            set
            {
                _prize = value;
            }
          
        }
       public string Password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
            }
        }
        public string login_id
        {
            get
            {
                return _login_id;
            }
            set
            {
                _login_id = value;
            }
        }
        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
            }
        }
        public string Email
        {
            get { return _email; }
            set
            {
                _email = value;
            }
        }
        
        public string Phone_Number
        {
            get
            {
                return _phone;
            }
            set
            {
                _phone = value;
            }
        }
        public int ProductId
        {
            get
            {
                return _proId;
            }
            set
            {
                _proId = value;
            }
        }
        public string Complaint
        {
            get
            {
                return _complaint;
            }
            set
            {
                _complaint = value;
            }
        }
        public string ProductQuery
        {
            get
            {
                return _query;
            }
            set
            {
                _query = value;
            }
        }
        public string Todate
        {
            get
            {
                return _todate;
            }
            set
            {
                _todate = value;
            }
        }
        public string Fromdate
        {
            get
            {
                return _fromdate;
            }
            set
            {
               _fromdate=value;
            }
        }
        public string C_Id
        {
            get
            {
                return _c_id;
            }
            set
            {
                _c_id = value;
            }
        }
        public string Query_id
        {
            get 
            {
                return _query_id;
            }
            set
            {
                _query_id=value;
            }
        }
        public string Reply
        {
            get
            {
                return _rply;
            }
            set
            {
                _rply = value;
            }
        }

       
        public int insertregistration()
        {
            return objpro1.registrationInsert(this);
        }
        public int insertlogin()
        {
            return objpro1.logininsert(this);
        }
        public int insertproduct()
        {
            return objpro1.productinsert(this);
        }
        public DataTable viewregistration()
        {
            return objpro1.viewregistration();
        }
        
        public int approveUser()
        {
            return objpro1.userApprove(this);
        }
        public int InsertComplaint()
        {
            return objpro1.Complaint(this);
        }
        public DataTable LoginPage()
        {
            return objpro1.PageLogin(this);
        }
        public DataTable viewProd()
        {
            return objpro1.ProdView();
        }
        public DataSet viewproId()
        {
            return objpro1.ProdIdView();
        }
       
        public int InsertQuery()
        {
            return objpro1.QueryInsert(this);
        }
        public DataTable GetProduct()
        {
            return objpro1.GetProductDetails(this);
        }
        public DataTable viewcomplaint()
        {
            return objpro1.complaintview(this);
        }
        public DataTable viewcomplaintAll()
        {
            return objpro1.Allcomplaintview(this);
        }
        public int approvecomplaint()
        {
            return objpro1.complaintApprove(this);
        }
        public DataTable inprocesscomplaint()
        {
            return objpro1.complaintinprocess(this);
        }
        public int closecomplaint()
        {
            return objpro1.complaintclose(this);
        }
        public DataTable viewMyComplaint()
        {
            return objpro1.MyComplaintview(this);
        }
        public DataTable viewquery()
        {
            return objpro1.queryview(this);
        }
        public int replyquery()
        {
            return objpro1.queryreply(this);
        }
        public DataTable viewMyQuery()
        {
            return objpro1.MyQueryview(this);
        }

    }
}
