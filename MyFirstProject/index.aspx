<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MyFirstProject.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>First Page</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" class="container" runat="server" >
        <div class="header">
            <h1>ASP.Net Basic Web Page</h1>
        </div>
        <div class="row">
        <div class="col-lg-6">
            <h1>Fill this Form</h1>
            <asp:Label ID="lblName" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
            <asp:Label ID="lblMail" runat="server" Text="Mail-ID:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox><br />
            <asp:Label ID="lblGender" runat="server" Text="Gender(Using RadioButtonList):" Font-Bold="true"></asp:Label>
            <asp:RadioButtonList ID="rbGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth:" Font-Bold="true"></asp:Label>
            <asp:TextBox ID="txtDOB" runat="server" Width="151px"></asp:TextBox>
            <asp:ImageButton ID="imgBtnCal" runat="server" src="images/calendar.png" OnClick="Show_Calender" Height="30px" Width="30px" /><br />
            <asp:Calendar ID="CalendarDOB" runat="server" OnSelectionChanged="Date_Changed" Visible="False" Width="229px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" style="position:absolute; left:343px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br /><asp:Label ID="LblNation" runat="server" Text="Nationality(Using RadioButton):" Font-Bold="true"></asp:Label><br />
            <asp:RadioButton ID="rbIndian" runat="server" Text="Indian" GroupName="RadioButton" />
            <asp:RadioButton ID="rbOther" runat="server" Text="Others" GroupName="RadioButton"/><br />
            <asp:Label ID="lblQual" runat="server" Text="Qualification:" Font-Bold="true"></asp:Label>
            <asp:DropDownList ID="ddlQual" runat="server" OnSelectedIndexChanged="Index_changed" Height="21px" Width="177px">
                <asp:ListItem>Select Subject</asp:ListItem>
                <asp:ListItem>B.Tech</asp:ListItem>
                <asp:ListItem>B.Sc</asp:ListItem>
                <asp:ListItem>B.Com</asp:ListItem>
                <asp:ListItem>B.A</asp:ListItem>
                <asp:ListItem>12th</asp:ListItem>
                <asp:ListItem>10th</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Label ID="lblCourse" runat="server" Text="Course:" Font-Bold="true"></asp:Label>
                <asp:CheckBoxList ID="chkCourse" runat="server">
                <asp:ListItem>Asp.Net</asp:ListItem>
                <asp:ListItem>Angular</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
                <asp:ListItem>C-Language</asp:ListItem>
            </asp:CheckBoxList><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Submit_Click" BackColor="green" BorderColor="green" ForeColor="white" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="Cancel_Click" BackColor="red" BorderColor="red" foreColor="white"/>
            <asp:LinkButton ID="lnkBtn" runat="server" OnClick="lnkBtnClick" CssClass="linkButton">Go to Page LifeCycle Event>></asp:LinkButton>

        </div>
        <div class="col-lg-6">
             <h1>After Submission Response will be display here:</h1>
             <div runat="server" id ="Div2">
                 <div id="imgDiv">
                     <asp:Image ID="Image1" src="images/akki3.jpg" runat="server" Visible="false" />
                 </div>
                 <asp:Label ID="lblNameVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblMailVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblGenVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblDOBVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblNationVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblQualVal" runat="server" Font-Bold="true"></asp:Label><br />
                 <asp:Label ID="lblCourseVal" runat="server" Font-Bold="true"></asp:Label>
             </div>
        </div>
            </div>
    </form>
</body>
</html>
