using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class LifeCycleEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                lblLoad.Text = lblLoad.Text + " Page Load Event Occured  !</br>";

                string nameData = Request.QueryString["sendData"];
            lblNameData.Text = nameData;
           
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page PreInit Event Occured !</br>";
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page Init Event Occured !</br>";
        }
        protected void Page_InitComplete(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page InitComplte Event Occured !</br>";
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page PreRender Event Occured !</br>";
        }
        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page PreRenderComplete Event Ocured !</br></br>";
        }
        protected void Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblLoad.Text = lblLoad.Text + " Page PreLoad Event Ocured !</br>";
            else
            {
                lblLoad.Text = lblLoad.Text + "Page is Reloaded so PostBack Event Occurs</br> and only these event occured next time :</br>";
                lblLoad.Text = lblLoad.Text + " Page PreLoad Event Ocured again !</br>";
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page LoadComplete Event Ocured !</br>";
        }
        protected void Page_SaveStateComplete(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page SaveStateComplete Event Ocured !</br>";
        }
        protected void Page_Unload(object sender, EventArgs e)
        {
            lblLoad.Text = lblLoad.Text + " Page Unload Event Occured !</br>";
        }
       
    }
}