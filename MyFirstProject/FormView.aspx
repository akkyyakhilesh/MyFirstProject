<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="FormView.aspx.cs" Inherits="MyFirstProject.FormView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Example of Form View:</h2>
    <div>
        <asp:FormView ID="formViewTable" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" AllowPaging="True" Height="150px" OnPageIndexChanging="formViewTable_PageIndexChanging">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" Font-Bold="True" Font-Size="Large" Font-Underline="True" />
                <RowStyle BackColor="White" Font-Size="Large" />
                <ItemTemplate>  
                    <table border="1" style="width: 500px; height: 100px;   
                    border: dashed 2px #04AFEF; background-color: #FFFFFF">  
                        <tr>  
                            <td>  
                                <b>ID: </b><span><%# Eval("Id") %></span><br />  
                                <b>Name: </b><span><%# Eval("Name") %></span><br /> 
                                <b>Address: </b><span><%# Eval("Address") %></span><br />
                                <b>Email: </b><span><%# Eval("Email")%></span><br />  
                            </td>  
                        </tr>  
                    </table>  
                </ItemTemplate> 
        </asp:FormView>
    </div>
</asp:Content>
