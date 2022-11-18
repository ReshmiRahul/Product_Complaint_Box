using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Product_Complaint_Box.User
{
    public partial class Query_Reply : System.Web.UI.Page
    {
        BAL.ProBAL objprobl = new BAL.ProBAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            objprobl.login_id = Convert.ToString(Session["id"]);
            GridView1.DataSource = objprobl.viewMyQuery();
            GridView1.DataBind();
        }
    }
}