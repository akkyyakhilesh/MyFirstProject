using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace MyFirstProject
{
    public partial class ContactUs : System.Web.UI.Page
    {
        string cs = "Data Source= PF02B-021; Database= Akhilesh; Integrated Security = true;";
        protected void Page_Load(object sender, EventArgs e)
        {



            //DataTable dt = new DataTable();

            //SqlConnection con = new SqlConnection(cs);

            //con.Open();
            //SqlCommand cmd = new SqlCommand("select * from Emp", con);
            //SqlDataReader sdr = cmd.ExecuteReader();
            ////dt.Load(sdr);
            //GridViewSql.DataSource = sdr;
            //GridViewSql.DataBind();
            //con.Close();
        }

      
    }
}