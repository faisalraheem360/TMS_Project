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
    public partial class Student_SignUp : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbset"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ClearControl()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryTextBox.Text="";
            CityTextBox.Text="";
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList.ClearSelection();
            SubjectTextBox.Text = "";
            ContactNoTextBox.Text = "";
            TutionTypeDropDownList.ClearSelection();
            TutorPrefferdDropDownList.ClearSelection();
            UserNameTextBox1.Text = "";
            PasswordTextBox2.Text = "";
            ConfirmPasswordTextBox.Text = "";


        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            
                SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "insert into Student_signup values(@name,@FatherName,@Surname,@Gender,@age,@country,@city,@address,@standard,@GoingTo,@Subject,@ContactNo,@TutionType,@TutorPrefferd,@UserName,@Password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@FatherName", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@Gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@GoingTo", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@ContactNo", ContactNoTextBox.Text);
                cmd.Parameters.AddWithValue("@TutionType", TutionTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@TutorPrefferd", TutorPrefferdDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@UserName", UserNameTextBox1.Text);
                cmd.Parameters.AddWithValue("@Password", PasswordTextBox2.Text);


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
                if(ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Registration Failed', 'Your UserName= " + UserNameTextBox1.Text + " Already Exit.','error')", true);
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