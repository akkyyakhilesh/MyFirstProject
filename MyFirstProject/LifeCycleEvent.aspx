<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LifeCycleEvent.aspx.cs" Inherits="MyFirstProject.LifeCycleEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Event Life Cycle</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" class="container" runat="server">
         <div class="header">
            <h1>ASP.Net Basic Web Page</h1>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <asp:Label ID="lblLoad" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblPreInit" runat="server" Font-Bold="true"></asp:Label><br />            
                <asp:Label ID="lblInit" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblInitComplete" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblPreRender" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblPreRenderComplete" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblUnload" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblPreLoad" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblLoadComplete" runat="server" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="lblSaveStateComplete" runat="server" Font-Bold="true"></asp:Label><br />

                <asp:CheckBox ID="chkReload" runat="server" AutoPostBack="true" />
                <asp:Label ID="lblCheckBox" runat="server" Text="Click on this CheckBox to Reload page !" Font-Bold="true"><br /></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" href="index.aspx" Class="linkButton">Go to Home Page</asp:LinkButton>
          </div>
            <div class="col-lg-6 col-md-6">
                <h1>Data of the form page by using Query String</h1>
                <asp:Label ID="lblNameData" runat="server"></asp:Label>
            </div>
      </div>
    </form>
</body>
</html>
