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
    public partial class Admin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["AkhileshConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                string query = "select * from signup";
                SqlCommand cmd = new SqlCommand(query,con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable table = new DataTable();
                sda.Fill(table);
                AdminGridView.DataSource = table;
                AdminGridView.DataBind();
            }
            catch {

            }
            finally {
                if (con != null)
                    con.Close();
            }
        }

        protected void AdminGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            try
            {
                //DataTable dt = (DataTable)AdminGridView.DataSource;
                //int row=(int)dt.Rows[e.RowIndex];
                //AdminGridView.DataSource = dt;
                //AdminGridView.DataBind();

                con.Open();
                string email="";
                string query = "delete from Signup where Email='" + email + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int status = cmd.ExecuteNonQuery();
                if (status == 1)
                {
                    lblInfo.Text = "You deleted One User!!";
                }
                else
                    lblInfo.Text = "You can't delete this user!";
            }
            catch
            {
                lblInfo.Text = "You can't delete this user!";
            }
            finally
            {
                if (con != null)
                    con.Close();
            }

        }

        

        protected void AdminGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            AdminGridView.PageIndex = e.NewPageIndex;
            AdminGridView.DataBind();
        }

        protected void AdminGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}