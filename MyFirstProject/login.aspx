<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyFirstProject.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
    th {
        text-align:center;
    }
</style>
     <link rel="stylesheet" href="MyStyle.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginDiv row" style="text-align:center"">
       <div class="col-lg-4"></div>
        <div class="col-lg-4">
           <table style="border-collapse:separate; width:90%;font-size:18px; border-spacing: 0 1em;">
              <tr>
                  <td colspan="2"> <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label></td>
              </tr>
               
               <tr>
                   <th colspan="2" style="background-color:dodgerblue;color:white;padding:5px">
                       <asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label>
                   </th>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="lblUsername" runat="server" Text="UserName:"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="rfvUsername" ControlToValidate="txtUsername" runat="server" ErrorMessage="Username Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^.{6,14}$" ErrorMessage="Invalid Password!" ForeColor="Red"></asp:RegularExpressionValidator>

                   </td>
               </tr>
               <tr>
                   <td></td>
                   <td>
                       <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmitClick" />
                       <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancelClick"/>
                   </td>
               </tr>
              
           </table>
        </div>
        <div class="col-lg-4"></div>
   </div>
</asp:Content>
