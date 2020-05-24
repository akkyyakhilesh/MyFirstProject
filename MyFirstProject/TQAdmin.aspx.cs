using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class TQAdmin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            displayData();
        }
        private void displayData()
        {
            SqlConnection con = new SqlConnection(cs);
            string person = Session["person"].ToString();                                           //getting logged in user data from session object
            string loggedUser = Session["loggedUser"].ToString();
            try
            {
                con.Open();
                lblLoggedIn.Text = "Logged in as " + person + " !";                                 // display logged in as user/subadmin/admin
                string findCompany = "select cid from users where Email='" + loggedUser + "'";      //accessing company ID of logged in user
                SqlCommand findCompanyCmd = new SqlCommand(findCompany, con);
                int cid = (int)findCompanyCmd.ExecuteScalar();

                if (person == "Admin")
                {
                    SqlDataSource1.SelectCommand = "select users.ID,users.Name,users.Gender,users.Mobile,users.Email,company.CName Company,company.Location,users.IsAdmin from users inner join company on users.cid=company.cid where email!='"+loggedUser+"'";
                }

                else if (person == "SubAdmin")
                {
                    SqlDataSource1.SelectCommand = "select users.ID,users.Name,users.Gender,users.Mobile,users.Email,company.CName Company,company.Location,users.IsAdmin from users inner join company on users.cid=company.cid where users.cid='" + cid + "' and email!='" + loggedUser + "'";
                }

                else if (person == "User")
                {
                    string userQuery = "select users.ID,users.Name,users.Gender,users.Mobile,users.Email,users.CID,company.CName Company,company.Location from users inner join company on users.cid=company.cid where email='" + loggedUser + "'";  //data to display to user
                    SqlCommand userData = new SqlCommand(userQuery, con);
                    h2id.InnerHtml = "Here is Your Details!";
                    SqlDataReader sdr = userData.ExecuteReader();
                    UserDetailsView.DataSource = sdr;
                    UserDetailsView.DataBind();
                }

                string findCompanyName = "select CName from Company where cid='" + cid + "'";
                SqlCommand companyNameCmd = new SqlCommand(findCompanyName, con);
                string cName = companyNameCmd.ExecuteScalar().ToString();
                if (cName == "")
                {
                    loggedUserInfo.Text = "TQ Admin ";                                 //display company specific welcome message
                }
                else
                {
                    loggedUserInfo.Text = cName + " Admin";
                }

            }
            catch
            {
               
            }
            finally
            {
                if (con != null)
                    con.Close();
            }

        }

        protected void UserGridView_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            UserGridView.EditIndex = e.NewEditIndex;
            this.displayData();
        }

        protected void UserGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = UserGridView.DataKeys[e.RowIndex].Values["ID"].ToString();
            SqlDataSource1.DeleteCommand= "delete from users where id='" + id + "'";
        }

        protected void UserGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            var id = UserGridView.DataKeys[e.RowIndex].Values["ID"];
            RadioButtonList gender = (RadioButtonList)UserGridView.Rows[e.RowIndex].FindControl("rblGender");
            TextBox name = (TextBox)UserGridView.Rows[e.RowIndex].FindControl("txtName");
            TextBox email = (TextBox)UserGridView.Rows[e.RowIndex].FindControl("txtEmail");
            TextBox mobile = (TextBox)UserGridView.Rows[e.RowIndex].FindControl("txtMobile");
            DropDownList company = (DropDownList)UserGridView.Rows[e.RowIndex].FindControl("ddlCompany");
            CheckBox isadmin= (CheckBox)UserGridView.Rows[e.RowIndex].FindControl("chkAdmin");
            SqlDataSource1.UpdateCommand= "update users set Name='" + name.Text + "',Gender='" + gender.SelectedValue + "',Mobile='" + mobile.Text + "',Email='" + email.Text + "',CID='" + company.SelectedValue + "',IsAdmin='" + isadmin.Checked + "' where id='" + id + "'";
            UserGridView.EditIndex = -1;
        }

        protected void UserGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            UserGridView.EditIndex = -1;
            this.displayData();
        }

        protected void logout(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void UserGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}