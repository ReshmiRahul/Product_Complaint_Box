using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Product_Complaint_Box.Admin
{
    public partial class Query_view : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = objprobl.viewquery();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            objprobl.Query_id = id.ToString();
            objprobl.Reply = TextBox1.Text;
            int i = objprobl.replyquery();
            GridView1.EditIndex = -1;
            GridView1.DataSource = objprobl.viewquery();
            GridView1.DataBind();
        }

       
    }
}