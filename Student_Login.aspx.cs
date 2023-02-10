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
    public partial class Student_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StudentloginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_signup where UserName = @UserName and Password = @Password";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@UserName",usernameTxt.Text);
            cmd.Parameters.AddWithValue("@Password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["Student_login"] = usernameTxt.Text; // apnay deshboard main  username show krwanay k lia 

                Response.Redirect("~/Student/Student_index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure', 'Username or Password is wrong','error')", true);
            }
            con.Close();
        }
    }
}