<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="DetailsView.aspx.cs" Inherits="MyFirstProject.DetailsView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h3>Example of DetailsView</h3>
        <div>
        <asp:DetailsView ID="detailsViewTable" runat="server" AllowPaging="True" OnPageIndexChanging="detailsViewTable_PageIndexChanging" Height="200px" Width="50%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" BorderWidth="1px" Font-Size="Large" Font-Underline="True" Height="20px" Width="10px" Wrap="True" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
    </div>
</asp:Content>
