using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Complaint_Box.Guest
{
    public partial class Login : System.Web.UI.Page
    {
        BAL.ProBAL objprobal = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            objprobal.Name = TextName.Text;
            objprobal.Password = TextPassword.Text;
            DataTable dt = objprobal.LoginPage();
            if (dt.Rows.Count > 0)
            {
                Session["uname"] = dt.Rows[0]["Username"];
                Session["id"]=dt.Rows[0]["login_id"];
                if (dt.Rows[0][3].ToString() == "Admin")
                {
                    Response.Redirect("../Admin/admin_index.aspx");
                }
                else if (dt.Rows[0][3].ToString() == "user" && dt.Rows[0][4].ToString() == "Confirmed")
                {
                    Response.Redirect("../User/User_Title.aspx");
                }
                else if (dt.Rows[0][3].ToString() == "user" && dt.Rows[0][4].ToString() != "Confirmed")
                {
                    Response.Write("<script>alert('User Not verified by Admin  ');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Incorrect Username or password');</script>");
            }
        }
    }
}
