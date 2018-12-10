﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="MyFirstProject.GridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Grid View Example</h2>
    <%--<div>
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
    </div>--%>
    <div>
        <asp:GridView ID="GridViewData" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" Height="250px" Width="100%"  DataKeyNames="id" OnRowDeleting="GridViewData_RowDeleting" OnRowEditing="GridViewData_RowEditing" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnSelectedIndexChanged="GridViewData_SelectedIndexChanged" OnRowCancelingEdit="GridViewData_RowCancelingEdit" OnRowUpdating="GridViewData_RowUpdating">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
             <Columns>  
                <asp:BoundField DataField="id" HeaderText="S.No." />  
                <asp:BoundField DataField="name" HeaderText="Name" />  
                <asp:BoundField DataField="address" HeaderText="Address" />  
                <asp:BoundField DataField="email" HeaderText="E-Mail Id" />  
             </Columns>  
        </asp:GridView>
    </div>
</asp:Content>
