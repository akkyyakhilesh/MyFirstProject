using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitClick(object sender, EventArgs e)
        {
            if (txtUsername.Text == "akhilesh" && txtPassword.Text == "akhilesh")
                Response.Redirect("Gallery.aspx");
            else
               lblError.Text = "Invalid Credentials!!";
            
        }

        protected void btnCancelClick(object sender, EventArgs e)
        {
            txtPassword.Text = string.Empty;
            txtUsername.Text = string.Empty;
        }
    }
}