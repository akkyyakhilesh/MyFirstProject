using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void displayData(object sender, EventArgs e)
        { 
            string name = txtName.Text;
            Session["name"] = name;
            string email = txtEmail.Text;
            Session["email"]= email;
            string mobile = txtMobile.Text;
            Session["mobile"] = mobile;
            string dob = txtDOB.Text;
            Session["dob"] = dob;
            Response.Redirect("Gallery.aspx");
        }

        protected void cvPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //if (txtPassword.Text.Length < 6)
            //    cvPassword.ErrorMessage = "Password is too Small!";
        }
    }
}