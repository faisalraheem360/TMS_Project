using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TMS_Project.Tutor
{
    public partial class View_Student : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Tutor_login"] == null)
            {
                Response.Redirect("~/Tutor_login.aspx");
            }
            if (!IsPostBack)
            {
                BindRepeater();
            }
        }
        void BindRepeater()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_signup";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            Repeater1.DataSource = data;
            Repeater1.DataBind();


        }

        protected void searchbtn_ServerClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from Student_signup where ([name] like ('%" + SearchText.Text + "%')or[Gender] like ('%" + SearchText.Text + "%')or[country] like ('%" + SearchText.Text + "%')or[city] like ('%" + SearchText.Text + "%')or[Subject] like ('%" + SearchText.Text + "%')or[ContactNo] like('%" + SearchText.Text + "%'))";
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