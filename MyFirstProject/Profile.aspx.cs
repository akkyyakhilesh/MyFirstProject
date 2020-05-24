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
    public partial class Profile : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {           
                 con.Open();
                string email = Session["email"].ToString();
                string query = "Select Name from Signup where Email='"+email+"'";
                SqlCommand cmd = new SqlCommand(query,con);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read()) {
                    lblName.Text = (string)sdr["Name"];
                }
                
            }
            catch { }
            finally {
                if(con!=null)
                con.Close();
            }
        }

        protected void lbDetails_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                con.Open();
                string email = Session["email"].ToString();
                string query = "select Name,Email,Mobile,DOB,Gender from Signup where Email='"+email+"'";
                SqlCommand cmd = new SqlCommand(query,con);
                DetailsViewProfile.DataSource = cmd.ExecuteReader();
                DetailsViewProfile.DataBind();
                viewDetails.Visible = false;
            }
            catch { }
            finally {
                if (con != null)
                    con.Close();    
            }
        }

        protected void DetailsViewProfile_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                con.Open();
                string email = Session["email"].ToString();
                string query = "Delete from Signup where Email='" + email + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int status = cmd.ExecuteNonQuery();
                DetailsViewProfile.DataBind();
                welcome.InnerText = "Your details is removed!!";


            }
            catch { }
            finally
            {
                if (con != null)
                    con.Close();
            }
        }


        protected void DetailsViewProfile_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            DetailsViewProfile.ChangeMode(DetailsViewMode.Edit);
        }
    }
}