using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class login : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Login on bullton click
        protected void btnSubmitClick(object sender, EventArgs e)
        {
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string password = txtPassword.Text;
                string email = txtUsername.Text;
                Session["email"] = email;
                string selectQuery = "select Password from Signup where Email='" + email + "'";
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                string sdr = (string)cmd.ExecuteScalar();
                if (chkAdmin.Checked)
                {
                    if (password == "password" && email == "username")
                    {
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        lblError.Text = "You are not an Admin!";
                    }

                }
                else
                {
                    if (password == sdr)
                    {
                        lblError.Text = "Login Successful!";
                        Response.Redirect("Profile.aspx");
                        Application["status"] = 1;
                    }
                    else
                        lblError.Text = "Login denied!";
                }
            }
            catch { }
            finally { }

            //SqlConnection con = new SqlConnection(cs);
            //try
            //{
            //    con.Open();
            //    string email = txtUsername.Text;
            //    string password = txtPassword.Text;
            //    Session["email"] = email;
            //    string selectQuery = "select count(*) from signup where (email='"+email+"') and (password='"+password+"')";
            //    SqlCommand cmd = new SqlCommand(selectQuery, con);
            //    int status = (int)cmd.ExecuteScalar();
            //    if (status == 0)
            //    {
            //        lblError.Text = "Login Denied!";
            //    }
            //    else
            //    {  
            //            Response.Redirect("Profile.aspx");    
            //    }


            //}
            //catch { }
            //finally { }



        }

        protected void btnCancelClick(object sender, EventArgs e)
        {
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
        }
    }
}