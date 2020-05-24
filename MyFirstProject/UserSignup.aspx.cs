using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class UserSignup : System.Web.UI.Page
    {
        string cs= ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertData(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string gender = rbGender.Text;
            string email = txtEmail.Text;
            string mobile = txtMobile.Text;
            string company = ddlCompany.SelectedItem.Text;
            int cid =Convert.ToInt32(ddlCompany.SelectedValue);
            string location = ddlLocation.Text;
            string password = txtPassword.Text;
            bool isadmin = false;
            DateTime dt = DateTime.ParseExact(txtDOJ.Text, "yyyy-MM-dd", CultureInfo.InvariantCulture);

            //string doj = dt.ToShortDateString();
            string doj = dt.ToString("dd-MM-yyyy");
            int count = 0;
            string countQuery = "select count(*) from users where Email='" + email + "'";
            string insertQuery = "insert into users(Name,Gender,Mobile,Email,CID,DOJ,Password,IsAdmin) values('"+name+"','"+gender+"','"+mobile+"','"+email+ "','" + cid + "','" +doj+ "','" +password+ "','" + isadmin + "') ";
            SqlConnection con = new SqlConnection(cs);
            try {
                con.Open();
               
                SqlCommand cd = new SqlCommand(countQuery, con);
                count = (Int32)cd.ExecuteScalar();
                if (count == 0)
                {

                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    int status = cmd.ExecuteNonQuery();
                    if (status == 1)
                    {
                        lblInfo.Text = "Sign Up Successful !";
                    }
                }
                else {
                    lblInfo.ForeColor = System.Drawing.Color.Red;
                    lblInfo.Text = "Already Registered, Try to Login!!";
                }

            }
            catch {
                lblInfo.Text = "Oops, Something Went wrong !";
            }
            finally {
                if (con != null)
                    con.Close();
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtMobile.Text = string.Empty;
                txtDOJ.Text = string.Empty;
                rbGender.ClearSelection();
            }
        }
    }
}