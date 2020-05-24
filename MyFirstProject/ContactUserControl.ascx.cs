using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class ContactUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thanks for Contacting us! We'll get back to you soon!";
            txtName.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtMail.Text = string.Empty;
            txtAddress.Text = string.Empty;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtMail.Text = string.Empty;
            txtAddress.Text = string.Empty;
        }
    }
}