<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="DataList.aspx.cs" Inherits="MyFirstProject.DataList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Example of Data List:</h2>
    <div>
        <asp:DataList ID="dataListData" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />

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
        </asp:DataList>
    </div>
</asp:Content>
