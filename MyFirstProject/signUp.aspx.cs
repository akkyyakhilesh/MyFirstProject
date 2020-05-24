using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Configuration;

namespace MyFirstProject
{
    public partial class signUp : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void displayData(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string name = txtName.Text;
            Session["name"] = name;
            string email = txtEmail.Text;
            Session["email"] = email;
            string mobile = txtMobile.Text;
            Session["mobile"] = mobile;
            DateTime db = DateTime.ParseExact(txtDOB.Text, "yyyy-MM-dd",CultureInfo.InvariantCulture);
            string dob = db.ToShortDateString();
            //txtDOB.Text
            //Session["dob"] = dob;
            string gender = rbGender.Text;
            string password = txtPassword.Text;

            try
            {
                
               
                con.Open();
                int count = 0;
                string countQuery = "select count(*) from signup where email='"+email+"'";
                SqlCommand cd = new SqlCommand(countQuery,con);
                count = (Int32)cd.ExecuteScalar();
                if (count == 0)
                {
                    string insertQuery = "insert into Signup(Name,Email,Mobile,Gender,DOB,Password) values('" + name + "','" + email + "','" + mobile + "','" + gender + "','" + db + "','" + password + "')";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    int status = cmd.ExecuteNonQuery();
                    if (status == 1)
                    {
                        lblInfo.Text = "Sign Up Successful !";
                        lbLogin.Visible = true;
                    }
                }
                else
                {
                    lblInfo.ForeColor = System.Drawing.Color.Red;
                    lblInfo.Text = "Already Registered, Try to Login!!";
                }
            }
            catch {
                lblInfo.Text = "Oops! Something Wrong!";
            }
            finally {
                if (con != null)
                    con.Close();
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMobile.Text = string.Empty;
                txtDOB.Text = string.Empty;
                rbGender.ClearSelection();
            }
            
        }

        protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }

       
    }
}