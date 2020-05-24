using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstProject
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCircleArea_Click(object sender, EventArgs e)
        {
            double radius =Convert.ToDouble(txtRadius.Text);
            Circle c = new Circle(radius);
            double area = c.getCircleArea();
            lblCircleArea.Text = "Area= " + area.ToString() + "m²";
        }
        protected void btnSquareArea_Click(object sender, EventArgs e)
        {
            double side = Convert.ToDouble(sideSquare.Text);
            Calculatorr cal = new Calculatorr();
            double area = cal.SquareArea(side);
            lblSquareArea.Text = "Area= " + area.ToString() + "cm²";
        }
        protected void btnRectArea_Click(object sender, EventArgs e)
        {
            double length = Convert.ToDouble(txtLength.Text);
            double breadth = Convert.ToDouble(txtBreadth.Text);
            Calculatorr cal = new Calculatorr();
            double area = cal.RectArea(length, breadth);
            lblRectArea.Text = "Area= " + area.ToString() + "m²";
        }


        protected void btnResInc_Click(object sender, EventArgs e)
        {
            resInc.Text = (Convert.ToInt32(inputInc.Text) + 1).ToString();
        }


        protected void btnResDec_Click(object sender, EventArgs e)
        {
            resDec.Text = (Convert.ToInt32(inputDec.Text) - 1).ToString();
        }

        protected void btnResAdd_Click(object sender, EventArgs e)
        {
            double val1 = Convert.ToDouble(addInput1.Text);
            double val2 = Convert.ToDouble(addInput2.Text);
            Calculatorr cal = new Calculatorr();
            double result = cal.Add(val1,val2);
            txtResAdd.Text = result.ToString();
        }

        protected void btnResSub_Click(object sender, EventArgs e)
        {
            double val1 = Convert.ToDouble(subInput1.Text);
            double val2 = Convert.ToDouble(subInput2.Text);
            Calculatorr cal = new Calculatorr();
            double result = cal.Substract(val1, val2);
            txtResSub.Text = result.ToString();
        }

        protected void btnResMul_Click(object sender, EventArgs e)
        {
            double val1 = Convert.ToDouble(mulInput1.Text);
            double val2 = Convert.ToDouble(mulInput2.Text);
            Calculatorr cal = new Calculatorr();
            double result = cal.Multiply(val1, val2);
            txtResMul.Text = result.ToString();
        }

        protected void btnResDiv_Click(object sender, EventArgs e)
        {
            double val1 = Convert.ToDouble(divInput1.Text);
            double val2 = Convert.ToDouble(divInput2.Text);
            if (val2 != 0)
            {
                Calculatorr cal = new Calculatorr();
                double result = cal.Divide(val1, val2);
                txtResDiv.Text = result.ToString();
            }
            else
            {
                txtResDiv.ForeColor = System.Drawing.Color.Red;
                txtResDiv.Text = "Can't divide by 0";
            }
        }

        protected void btnRelational_Click(object sender, EventArgs e)
        {
            if (ddlRelational.SelectedValue == "<")
            {
                if (Convert.ToInt32(RelationalInp1.Text) < Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";


            }
            else if (ddlRelational.SelectedValue == ">")
            {
                if (Convert.ToInt32(RelationalInp1.Text) > Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";
            }
            else if (ddlRelational.SelectedValue == ">=")
            {
                if (Convert.ToInt32(RelationalInp1.Text) >= Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";
            }
            else if (ddlRelational.SelectedValue == "<=")
            {
                if (Convert.ToInt32(RelationalInp1.Text) <= Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";
            }
            else if (ddlRelational.SelectedValue == "==")
            {
                if (Convert.ToInt32(RelationalInp1.Text) == Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";
            }
            else if (ddlRelational.SelectedValue == "!=")
            {
                if (Convert.ToInt32(RelationalInp1.Text) != Convert.ToInt32(RelationalInp2.Text))
                    txtRelationRes.Text = "True";
                else
                    txtRelationRes.Text = "False";
            }
        }






































        protected void Button1_Click(object sender, EventArgs e)
        {

            txtResult.Text = txtResult.Text + Button1.Text;
            hdnVal.Value = txtResult.Text + Button1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button2.Text;
            hdnVal.Value = txtResult.Text + Button2.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button3.Text;
            hdnVal.Value = txtResult.Text + Button3.Text;
        }

        protected void ButtonDivide_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + ButtonDivide.Text;
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button4.Text;
            hdnVal.Value = txtResult.Text + Button4.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button5.Text;
            hdnVal.Value = txtResult.Text + Button5.Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button6.Text;
            hdnVal.Value = txtResult.Text + Button6.Text;
        }

        protected void ButtonMul_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + ButtonMul.Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button7.Text;
            hdnVal.Value = txtResult.Text + Button4.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button8.Text;
            hdnVal.Value = txtResult.Text + Button8.Text;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button9.Text;
            hdnVal.Value = txtResult.Text + Button9.Text;
        }

        protected void ButtonSub_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + ButtonSub.Text;
        }

        protected void ButtonDec_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + ButtonDec.Text;
        }

        protected void Button0_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + Button0.Text;
            hdnVal.Value = txtResult.Text + Button0.Text;
        }

        protected void ButtonEqual_Click(object sender, EventArgs e)
      {
            if (Session["operator"] != null)
            {
                if (Session["operator"].ToString() == "+")
                {
                    double ab =  Convert.ToDouble(hdnVal.Value);
                    Convert.ToDouble(Session["val1"]);
                }
            }
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Session["operator"] = "+";
            if (Session["val1"] == null)
                Session["val1"] = Convert.ToDouble(hdnVal.Value);
            else
                Session["val1"] = Convert.ToDouble(Session["val1"]) + Convert.ToDouble(hdnVal.Value);
            double a = Convert.ToDouble(Session["val1"]);
            hdnVal.Value = "";
            txtResult.Text = txtResult.Text + ButtonAdd.Text;
            //hdnVal.Value = (Convert.ToInt32(hdnVal.Value) + Convert.ToInt32(Session["val1"])).ToString();
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text.Remove(txtResult.Text.Length - 1);
        }

        protected void ButtonAllClear_Click(object sender, EventArgs e)
        {
            txtResult.Text = "";
        }

        protected void ButtonRoot_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonPercent_Click(object sender, EventArgs e)
        {
            txtResult.Text = txtResult.Text + ButtonPercent.Text;
        }

       






        //next new Operator Example area begins here





    }
}