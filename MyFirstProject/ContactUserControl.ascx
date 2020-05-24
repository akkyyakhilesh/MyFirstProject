<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactUserControl.ascx.cs" Inherits="MyFirstProject.ContactUserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 34%;
        height: 180px;
    }
    .auto-style2 {
        width: 184px;
    }
    .auto-style3 {
        width: 184px;
        height: 40px;
    }
    .auto-style4 {
        height: 40px;
    }
</style>

<table border="0" class="auto-style1" style="width: 100%; font-size: large; font-weight: bold; border-spacing: inherit; word-spacing: 0em;">
    <tr>
        <td class="auto-style2" colspan="2" style="text-align: center">
            <asp:Label ID="lblMessage" runat="server" ForeColor="#009933"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2" style="text-align: right">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Name:</td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">Mobile No:</td>
        <td>
            <asp:TextBox ID="txtMobile" runat="server" Width="200px" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Number is Required!" ForeColor="Red">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" style="text-align: right">E-Mail:</td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" Width="200px" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Invalid Mail Address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" style="text-align: right">Address:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </td>
    </tr>
</table>

