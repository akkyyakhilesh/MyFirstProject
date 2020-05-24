using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class DetailsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable table = new DataTable();
            table.Columns.Add("Name");
            table.Columns.Add("Mobile");
            table.Columns.Add("Email ID");
            table.Columns.Add("D.O.B");
            table.Rows.Add("Akhilesh", "9492040362", "akumar2@talentquest.com", "1994-10-20");
            table.Rows.Add("Ritvick", "8594668945", "rsingh@talentquest.com", "1994-07-15");
            table.Rows.Add("Manisha", "7036458549", "mshukla@talentquest.com", "1996-04-21");
            table.Rows.Add("Dip", "7564668945", "dpodder@talentquest.com", "1995-09-02");
            table.Rows.Add("Hrishikesh", "8593456945", "hhegde@talentquest.com", "1995-03-22");
            detailsViewTable.DataSource = table;
            detailsViewTable.DataBind();
        }

        protected void detailsViewTable_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            detailsViewTable.PageIndex = e.NewPageIndex;
            detailsViewTable.DataBind();
        }
    }
}