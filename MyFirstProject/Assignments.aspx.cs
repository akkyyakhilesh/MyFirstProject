using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class Assignments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void showDataList(object sender, EventArgs e)
        {

            Response.Redirect("DataList.aspx");
        }


        protected void showDetailsView(object sender, EventArgs e)
        {
            Response.Redirect("DetailsView.aspx");
        }

        protected void showFormView(object sender, EventArgs e)
        {
            Response.Redirect("FormView.aspx");
        }

        protected void showGridView(object sender, EventArgs e)
        {
            Response.Redirect("GridView.aspx");

        }

        protected void showListView(object sender, EventArgs e)
        {
            Response.Redirect("ListView.aspx");
        }
    }


}