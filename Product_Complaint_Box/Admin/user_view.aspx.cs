using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Complaint_Box.Admin
{
    public partial class user_view : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = objprobl.viewregistration();
            GridView1.DataBind();
        }

        

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            objprobl.login_id = id.ToString();
            int i = objprobl.approveUser();
            GridView1.EditIndex = -1;
            GridView1.DataSource = objprobl.viewregistration();
            GridView1.DataBind();
        }
    }
}