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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ClearControl()
        {
            NameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            EmailTextBox.Text = "";
            MaritalStatusDropDownList.ClearSelection();
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            DegreeTextBox.Text = "";
            QualificationDropDownList.ClearSelection();
            ExperienceDropDownList.ClearSelection();
            ContactNoTextBox.Text = "";
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";


        }
        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "insert into tutor_signup values(@name,@surname,@gender,@age,@email,@marital_status,@country,@city,@address,@qualification,@degree,@experience,@contactno,@username,@password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@marital_status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qualification", QualificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactNoTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);


                con.Open();
                int a = cmd.ExecuteNonQuery();

                if (a == 1)
                {
                    // Response.Write("<script>alert('You Have Registration Successfully..')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success', 'You Have Registration Successfully..','success')", true);

                    ClearControl();
                }
                else
                {
                    //Response.Write("<script>alert('Registration Failed.. Check your UserName its username already add..')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure', 'Registration Failed.. Check your UserName its username already add..','error')", true);


                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Registration Failed', 'Your UserName= " + UserNameTextBox.Text + " Already Exit.','error')", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure', 'You Have Registration Failed..','error')", true);
                }
            }
            finally
            {
                con.Close();
            }
            
        }
    }
}