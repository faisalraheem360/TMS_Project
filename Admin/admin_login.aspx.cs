using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project.Admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void clearscreen()
        {
            usernameTxt.Text = "";
            PasswordTxt.Text = "";
        }
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from adminLogin where username=@username and password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username",usernameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
            con.Open();
          SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                //Response.Write("<script>alert('Login Successfull')</script>");
                Session["admin_username"] = usernameTxt.Text;
                Response.Redirect("admin_index.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Username or Password is wrong ')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure', 'Username or Password is wrong','error')", true);
                clearscreen();
            }
            con.Close();
        }
    }
}