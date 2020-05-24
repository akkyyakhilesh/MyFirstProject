<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="MyFirstProject.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
            text-align:center;
        }
        th{
            text-align:center;
        }
    </style>
   
     <link rel="stylesheet" href="MyStyle.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gallery-header row">
        <h1>Grid View Example</h1>
   
        <div class="col-lg-3 col-md-3"></div>
    <div class="galleryMainContent col-lg-6">
        <asp:GridView ID="grdViewTable" runat="server" CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Height="308px" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
      </div>  
        <div class="col-lg-3 col-md-3"></div>
    </div>
</asp:Content>
