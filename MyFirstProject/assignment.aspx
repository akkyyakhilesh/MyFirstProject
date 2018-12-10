<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assignment.aspx.cs"  Inherits="MyFirstProject.assignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .col-lg-2 {
           width:20%;
           text-align:center;
        }

    </style>
    <link rel="stylesheet" href="MyStyle.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Assignment Page</h1>
        <div class="row">
            <div class="col-lg-2">
                <h3>Example of DataList</h3>
                <asp:Button ID="btnDataList" runat="server" Text="Click to View" OnClick="showDataList" />

                <asp:DataList ID="dataListTable" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" />
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
            </div>

            <div class="col-lg-2">
                <h3>Example of DetailsView</h3>
                <asp:Button ID="btnDetailsView" runat="server" Text="Click to View" OnClick="showDetailsView"/>

                <asp:DetailsView ID="detailsViewTable" runat="server" Height="147px" Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
            </div>

            <div class="col-lg-2">
                <h3>Example of FormView</h3>
                <asp:Button ID="btnFormView" runat="server" Text="Click to View" OnClick="showFormView" />

                <asp:FormView ID="formViewTable" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:FormView>
            </div>

            <div class="col-lg-2">
                <h3>Example of GridView</h3>
                <asp:Button ID="btnGridView" runat="server" Text="Click to View" OnClick="showGridView" />

                <asp:GridView ID="gridViewTable" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="200px" Width="100%">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <div class="col-lg-2">
                <h3>Example of ListView</h3>
                <asp:Button ID="btnListView" runat="server" Text="Click to View" OnClick="showListView" />

                <asp:ListView ID="listViewTable" runat="server"></asp:ListView>
            </div>
            
        </div>
    </form>
</body>
</html>
