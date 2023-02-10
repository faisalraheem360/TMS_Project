using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace TMS_Project
{
    public partial class Tutor_login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TutorloginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", usernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["Tutor_login"] = usernameTxt.Text; // apnay deshboard main  username show krwanay k lia 

                Response.Redirect("~/Tutor/Tutor_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure', 'Username or Password is wrong','error')", true);
            }
            con.Close();
        }
    }
}