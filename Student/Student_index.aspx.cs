using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_Project.Student
{
    public partial class Student_index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student_login"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }
           
        }
    }
}