using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Contact : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        void ClearData()
        {
            NameTextBox.Text = "";
            EmailTextBox.Text = "";
            SubjectDropDownList.ClearSelection();
            MessageTextAreaTextBox.Text = "";
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string sp = "spContact_Insert";
            SqlCommand cmd = new SqlCommand(sp,con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@subject", SubjectDropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@message", MessageTextAreaTextBox.Text);
            con.Open(); //con open krna zarori hota hai
            int a= cmd.ExecuteNonQuery(); // 0 ya 1 id return krti hai mtlb agr koi value pass ki to 1 agr koi error aya to 0 
            if (a > 0)
            {
                // Response.Write("<script>alert('Form has been submitted Successfully. ')</script>");
                // Response.Write("<script>SuccessContact()</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "SuccessContact()",true);
                ClearData();
            }
            else
            {
               // Response.Write("<script>alert('Form insertion Faild. ')</script>");
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ErrorContact()", true);
            }

            con.Close();    // agr ap is ko close na kro gay to wo con open rahay ga or memory main jaga laita rahay ga

        }
    }
}