using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace TMS_Project.Admin
{
    public partial class Contact_VIew : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //hm nay is condition main not is lia use kia k hmara page firsttime  load hoa to ye method wala automatically call ho jaye agr main not na lgata to ye conditon tb chalta
            // jb kisi button pr press hota ya post back hota pr main chata ho jb mera first time execute ho to automatically run ho jaye 
            // ye method data lay raha hai contact table main say or os ko bind gridview k shat krwa raha
            if (Session["admin_username"] == null)
            {
                Response.Redirect("admin_login.aspx");
            }
            if (!IsPostBack)
            {
                BindGridView();
            }
            
        }
        void BindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from contact_tbl";
            SqlDataAdapter sda = new SqlDataAdapter(query, con); // data ko fetch krnay k lia mtlb database table ka data fetch kr k day ga
            DataTable data = new DataTable();  // datatable ka ak object bnaye gay js main sda ka fetch kia hoa  data fill karay ga
            sda.Fill(data);                   // sda k object data object main fetch kia hoa data fill kr day ga
            
            GridView2.DataSource = data;  // gredview ko fetch kia hoa data store krwa day gay 
           GridView2.DataBind();     // gridview main fetch krnay k bad ye method  call krwana zarori hai qk hmari gridview k shat data object main ye data bind fill krwa raha hai
        }

        protected void Row_Deleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];
            Label itemId = (Label)row.FindControl("LabelID");
            string Id = itemId.Text;
            SqlConnection con = new SqlConnection(cs);
            string query = "delete from contact_tbl where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Id);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script> alert('Data has been deleted successfully..')</script>");
                BindGridView();
            }
            con.Close();
        }
    }
}