using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class GridView : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            //DataTable table = new DataTable();
            //table.Columns.Add("Name");
            //table.Columns.Add("Mobile");
            //table.Columns.Add("Email ID");
            //table.Columns.Add("D.O.B");

            //table.Rows.Add("Ritvick", "8594668945", "rsingh@talentquest.com", "1994-07-15");
            //table.Rows.Add("Manisha", "7036458549", "mshukla@talentquest.com", "1996-04-21");
            //table.Rows.Add("Ritvick", "7564668945", "dpodder@talentquest.com", "1995-09-02");
            //gridViewTable.DataSource = table;
            //gridViewTable.DataBind();

            DataTable tables = new DataTable();
            tables.Columns.Add("id");
            tables.Columns.Add("Name");
            tables.Columns.Add("Address");
            tables.Columns.Add("Email");

            tables.Rows.Add("1", "Akhilesh", "BTM", "akumar2@talentquest.com");
            tables.Rows.Add("2", "Ritvick", "HSR", "rsingh@talentquest.com");
            tables.Rows.Add("3", "Dip", "BOM", "dpodder@talentqquest.com");

            GridViewData.DataSource = tables;
            GridViewData.DataBind();
            
        }

      

        

        protected void GridViewData_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = (DataTable)GridViewData.DataSource;
            dt.Rows[e.RowIndex].Delete();
            GridViewData.DataSource = dt;
            GridViewData.DataBind();
           
        }

        protected void GridViewData_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridViewData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            DataTable dt = (DataTable)GridViewData.DataSource;
            GridViewRow row = GridViewData.Rows[e.RowIndex];
            dt.Rows[row.DataItemIndex]["id"] = ((TextBox)(row.Cells[1].Controls[0])).Text;
            dt.Rows[row.DataItemIndex]["Name"] = ((TextBox)(row.Cells[2].Controls[0])).Text;
            dt.Rows[row.DataItemIndex]["Address"] = ((TextBox)(row.Cells[3].Controls[0])).Text;
            dt.Rows[row.DataItemIndex]["Email"] = ((TextBox)(row.Cells[4].Controls[0])).Text;
            GridViewData.EditIndex = -1;
       
            GridViewData.DataBind();
            
        }

        protected void GridViewData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
           // DataTable dt = (DataTable)GridViewData.DataSource;
            GridViewData.EditIndex = -1;
           // GridViewData.DataSource = dt;
            GridViewData.DataBind();
        }

        protected void GridViewData_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}