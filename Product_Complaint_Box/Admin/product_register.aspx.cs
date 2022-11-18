using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Product_Complaint_Box.Admin
{
    public partial class product_register : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            objprobl.Product_Name = pname.Text;
            objprobl.Price = prize.Text;
            int i = objprobl.insertproduct();
            if (i == 1)
            {
                Response.Write("<script>alert('Successfully Inserted');</script>");
            }
        }
    }
}