using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class FormView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable tables = new DataTable();
            tables.Columns.Add("Id");
            tables.Columns.Add("Name");
            tables.Columns.Add("Address");
            tables.Columns.Add("Email");

            tables.Rows.Add("1", "Akhilesh", "BTM", "akumar2@talentquest.com");
            tables.Rows.Add("2", "Ritvick", "HSR", "rsingh@talentquest.com");
            tables.Rows.Add("3", "Dip", "BOM", "dpodder@talentqquest.com");
            tables.Rows.Add("4", "Manisha", "BTM2", "mshukla@talentqquest.com");
            tables.Rows.Add("5", "Hrishikesh", "ELC", "hhegde@talentqquest.com");
            formViewTable.DataSource = tables;
            formViewTable.DataBind();
        }

        protected void formViewTable_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            formViewTable.PageIndex = e.NewPageIndex;
            formViewTable.DataBind();
        }
    }
}