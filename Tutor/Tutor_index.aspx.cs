using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.Tutor
{
    public partial class Tutor_index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Tutor_login"] == null)
            {
                Session.Abandon();
                Response.Redirect("~/Tutor_login.aspx");
            }
        }
    }
}