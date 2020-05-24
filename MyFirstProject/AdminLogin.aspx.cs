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
    public partial class AdminLogin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();      //connection string
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string username = txtUsername.Text;                     //getting data from textbox
            string password = txtPassword.Text;
            Session["loggedUser"] = username;                       //setting data to session object to use in other page
            string query = "select count(*) from users where Email='"+username+"' and Password='"+password+"'";         //query to check valid username/password
            string isSubAdminQuery = "select IsAdmin from users where Email='"+username+"'";                           //query to check isAdmin value
            string isAdminQuery = "select count(*) from users where cid=0 and Email='" + username + "' and Password='" + password + "'";  //query to check admin
            try
            {
                con.Open();
                SqlCommand cd = new SqlCommand(isSubAdminQuery,con);        
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand cmds = new SqlCommand(isAdminQuery, con);
                bool isSubAdmin = (bool)cd.ExecuteScalar();                 //executing query to get Isadmin value
                int status = (int)cmd.ExecuteScalar();                      //executing uery to check valid username/password
                int isAdmin = (int)cmds.ExecuteScalar();                    //executing query to check admin 
                
                if (status == 0)                                    //checking if given username/password match from database
                {
                    lblError.Text = "Invalid Username/Password!";
                }
                else if (isSubAdmin)
                {
                    if (isAdmin==0)                                 //checking if the logged in user is sub-admin or not
                    {
                        Session["person"] = "SubAdmin";
                        Response.Redirect("TQAdmin.aspx");
                        lblError.Text = "You are SubAdmin!";
                    }
                    else
                    {
                        Session["person"] = "Admin";                //checking if the logged in user is admin or not
                        Response.Redirect("TQAdmin.aspx");
                       
                        lblError.Text = "You are an Admin!";
                    }
                }
                else
                {
                    Session["person"] = "User";
                    lblError.Text = "You are not an Admin!";
                    Response.Redirect("TQAdmin.aspx");
                   
                }
            }
            catch {
                lblError.Text = "Something went Wrong!";
            }
            finally {
                if (con != null)
                    con.Close();
            }
        }

        protected void btnCancelClick(object sender, EventArgs e)
        {
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
        }
    }
}