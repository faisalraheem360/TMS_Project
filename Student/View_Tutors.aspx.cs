using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace TMS_Project.Student
{
    public partial class View_Tutors : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Student_login"] == null)
            {
                Response.Redirect("~/Student_Login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }

        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();
            

        }

        protected void searchbtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from tutor_signup where ([name] like ('%"+SearchText.Text+ "%')or[gender] like ('%" + SearchText.Text + "%')or[country] like ('%" + SearchText.Text + "%')or[city] like ('%" + SearchText.Text + "%')or[qualification] like ('%" + SearchText.Text + "%')or[experience] like('%" + SearchText.Text + "%'))";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            if (data.Rows.Count > 0)
            {
                Repeater1.DataSource = data;
                Repeater1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No Record')</script>");
            }
            
        }
    }
}