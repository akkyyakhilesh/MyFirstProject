<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="UserSignup.aspx.cs" Inherits="MyFirstProject.UserSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style3 {
            width: 237px;
        }
       
        .auto-style4 {
            height: 29px;
        }
       
    </style>
     <link rel="stylesheet" href="MyStyle.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-5 col-md-4"></div>
       <div class="col-lg-5 col-md-6" style="margin-top:15px;font-size:18px">
           
           <table style="border-collapse:separate;    border-spacing: 0 0.8em;">
               <tr>
                   <th colspan="2" style="background-color:#FFFFFF; color:white;padding:5px;text-align:center">
                       <asp:Label ID="lblInfo" runat="server" Text="" ForeColor="Green"></asp:Label>
                       
                   </th>
               </tr>
               <tr>
                   <th colspan="2" style="background-color:#FFFFFF; color:white;padding:5px;text-align:center">
                      <asp:LinkButton ID="lbLogin" runat="server" Visible="false" href="login.aspx">Click to Login</asp:LinkButton>

                   </th>
               </tr>
               <tr>
                   <th colspan="2" style="background-color:dodgerblue;color:white;padding:5px;text-align:center">
                       <asp:Label ID="lblTableHead" runat="server" Text="Sign Up"></asp:Label>
                   </th>
               </tr>
               <tr>
                   <td  style="text-align:right">
                       <asp:Label ID="lblName" runat="server" Text="Name : "></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style3">            
                       <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblGender" runat="server" Text="Gender : "></asp:Label>
                   </td>
                   <td>
                       <asp:RadioButtonList ID="rbGender" runat="server">
                           <asp:ListItem>Male</asp:ListItem>
                           <asp:ListItem>Female</asp:ListItem>
                       </asp:RadioButtonList>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblMobile" runat="server" Text="Mobile : "></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txtMobile" TextMode="Number" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style3">
<%--                       <asp:RangeValidator ID="rvMobile" runat="server" ControlToValidate="txtMobile" Type="Double" MaximumValue="10000000000" MinimumValue="6000000000" ErrorMessage="Number is Invalid!" ForeColor="Red"></asp:RangeValidator>--%>
                           <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ValidationExpression="\d{10}" ErrorMessage="Enter 10digit number!" ForeColor="Red">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblEmail" runat="server" Text="E-Mail : "></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style3">
<%--                       <asp:RequiredFieldValidator ID="rvfEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                       <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^(?=.*?[a-z])(?=.*?[#?@.]).{8,}$" ErrorMessage="Invalid Email Format!" ForeColor="Red">*</asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblCompany" runat="server" Text="Company:"></asp:Label>
                   </td>
                    <td>
                        <asp:DropDownList ID="ddlCompany" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="CName" DataValueField="CID">
                        <asp:ListItem Text="Select Company" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AkhileshConnectionString %>" SelectCommand="SELECT [CID], [CName] FROM [Company] WHERE ([CName] IS NOT NULL)"></asp:SqlDataSource>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblLocation" runat="server" Text="Location:"></asp:Label>
                   </td>
                    <td>
                       <asp:DropDownList ID="ddlLocation" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource2" DataTextField="Location" DataValueField="Location">
                           <asp:ListItem Text="Select Location" Value="Location"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AkhileshConnectionString %>" SelectCommand="SELECT [Location] FROM [Company] WHERE ([CName] IS NOT NULL)"></asp:SqlDataSource>
                   </td>
               </tr>
               
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblDOJ" runat="server" Text="Date Of Join : "></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtDOJ" TextMode="Date" runat="server"></asp:TextBox>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right" class="auto-style4">
                       <asp:Label ID="lblPassword" runat="server" Text="Password : "></asp:Label>
                   </td>
                   <td class="auto-style4">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style4">
                       <%--<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is Required!" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                       <%--<asp:RegularExpressionValidator ID="rexPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$" ErrorMessage="Invalid Password!" ForeColor="Red">*</asp:RegularExpressionValidator>--%>
<%--                       <asp:CustomValidator ID="cvPassword" runat="server" Display="Dynamic" ErrorMessage="Invalid Password!" ForeColor="Red" OnServerValidate="cvPassword_ServerValidate"></asp:CustomValidator>--%>
                      <%-- <asp:RangeValidator ID="rvPassword" runat="server" ControlToValidate="txtPassword" ForeColor="Red"  ErrorMessage="Invalid Password!"></asp:RangeValidator>--%>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       <asp:Label ID="lblRePassword" runat="server" Text="ReType Password : "></asp:Label>
                   </td>
                   <td>
                        <asp:TextBox ID="txtRePassword" TextMode="Password" required="true" runat="server"></asp:TextBox>
                   </td>
                   <td class="auto-style3">
                       <asp:CompareValidator ID="cvRePassword" runat="server" ControlToValidate="txtRePassword" ControlToCompare="txtPassword" ErrorMessage="Password not matched!" ForeColor="Red">*</asp:CompareValidator>
                   </td>
               </tr>
               <tr>
                   <td style="text-align:right">
                       
                   </td>
                   <td>
                       <asp:Button ID="btnSubmit" runat="server" OnClick="insertData" Text="Submit" BackColor="#009900" ForeColor="White" />
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="Red" ForeColor="White" />
                   </td>
               </tr>

               <tr>
                   <td style="text-align:right">
                       
                       &nbsp;</td>
                   <td>
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="red"/>
                   </td>
               </tr>

           </table>
       </div>
        <div class="col-lg-3 col-md-3"></div>
   </div>
</asp:Content>
