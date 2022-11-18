using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Product_Complaint_Box.User
{
    public partial class Registration : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            objprobl.Name = Name.Text;
            objprobl.Email = Email.Text;
            //objstubl.Address = txtaddress.Text;
            objprobl.Phone_Number = Phone.Text;
            objprobl.Password = Pass.Text;
            int i = objprobl.insertregistration();
            int j=objprobl.insertlogin();
            if(i==1 && j==1)
            {
                Response.Write("<script>alert('Registration successful');</script>");
            }
        }

        protected void Phone0_TextChanged(object sender, EventArgs e)
        {

        }
    }
}