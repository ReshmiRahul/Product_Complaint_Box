using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Complaint_Box.Admin
{
    public partial class ComplaintView : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataSource = objprobl.viewcomplaintAll();
            GridView2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            objprobl.Todate=TextBox2.Text;
            objprobl.Fromdate =TextBox1.Text;
            GridView1.DataSource=objprobl.viewcomplaint();
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            objprobl.C_Id = id.ToString();
            int i = objprobl.approvecomplaint();
            GridView1.EditIndex = -1;
            GridView1.DataSource = objprobl.viewcomplaint();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            objprobl.Todate = TextBox2.Text;
            objprobl.Fromdate = TextBox1.Text;
            GridView3.DataSource = objprobl.inprocesscomplaint();
            GridView3.DataBind();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value.ToString());
            objprobl.C_Id = id.ToString();
            int i = objprobl.closecomplaint();
            GridView3.EditIndex = -1;
            GridView3.DataSource = objprobl.viewcomplaint();
            GridView3.DataBind();
            GridView1.DataBind();
            
        }
    }
}