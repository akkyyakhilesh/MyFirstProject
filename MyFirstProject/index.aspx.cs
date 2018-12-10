using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            lblNameVal.Text = lblName.Text+" "+txtName.Text;
            lblMailVal.Text = lblMail.Text+" "+txtMail.Text;
            lblGenVal.Text = lblGender.Text+ " "+rbGender.Text;
            lblDOBVal.Text = lblDOB.Text+" "+txtDOB.Text;
            lblQualVal.Text = lblQual.Text+" "+ddlQual.Text;
            if (rbIndian.Checked)
                lblNationVal.Text = LblNation.Text + " " + rbIndian.Text;
            else
                lblNationVal.Text = LblNation.Text + " " + rbOther.Text;
            
            if(txtMail.Text=="archyakhilesh@gmail.com")
            Image1.Visible = true;
            string CourseList = "";
            foreach(ListItem list in chkCourse.Items) {
                if (list.Selected)
                    CourseList = CourseList + list.Value + "  ";
            }
            lblCourseVal.Text = lblCourse.Text+" "+ CourseList.ToString();
        }
        protected void Cancel_Click(object sender, EventArgs e)
        {
            txtName.Text = string.Empty;
            txtMail.Text = string.Empty;
            rbGender.ClearSelection();
            ddlQual.SelectedIndex = 0;
            chkCourse.SelectedIndex = -1;
            Div2.Visible = false;
            txtDOB.Text = string.Empty;
            CalendarDOB.Visible = false;
            if (rbIndian.Checked)
                rbIndian.Checked=false;
            if (rbOther.Checked)
                rbOther.Checked = false;
        }
        protected void Index_changed(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void Show_Calender(object sender, EventArgs e)
        {
            CalendarDOB.Visible = true;

        }

        protected void Date_Changed(object sender, EventArgs e)
        {
            txtDOB.Text = CalendarDOB.SelectedDate.ToShortDateString();
            CalendarDOB.Visible = false;

        }
        protected void lnkBtnClick(object sender, EventArgs e)
        {
            string sendData = txtName.Text +" "+ txtMail.Text;
            Response.Redirect("LifeCycleEvent.aspx?sendData="+sendData);

        }

    }
}