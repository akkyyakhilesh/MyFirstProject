<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="TQAdmin.aspx.cs" Inherits="MyFirstProject.TQAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        h2 {
            text-align:center;
            border-radius:80%;
            background-color:#333;
            color:white;
            margin:15px;
            margin-bottom:5px;
           
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to <asp:Label ID="loggedUserInfo" runat="server"></asp:Label> Panel !</h1>
    <div class="row">
        <h4 style="text-align:right; margin-right:25px"><asp:Label ID="lblLoggedIn" runat="server"  Font-Bold="True" Font-Size="Larger" ForeColor="Blue" CssClass="lblCss"></asp:Label>
            <asp:LinkButton ID="lbLogout" OnClick="logout" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Larger">Logout</asp:LinkButton></h4>
        <h2 id="h2id" runat="server">Details of All Registered Users:</h2>       
        <asp:DetailsView ID="UserDetailsView" runat="server" Height="251px" Width="549px" CellPadding="4" CssClass="auto-style1" HorizontalAlign="Center" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                 <EditRowStyle BackColor="#999999" />
                 <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                 <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Size="Large" Font-Bold="True" />
        </asp:DetailsView>
        <asp:GridView ID="UserGridView" runat="server" HorizontalAlign="Center" DataSourceID="SqlDataSource1" OnRowCancelingEdit="UserGridView_RowCancelingEdit" OnRowDeleting="UserGridView_RowDeleting" OnRowEditing="UserGridView_RowEditing" OnRowUpdating="UserGridView_RowUpdating" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ViewStateMode="Enabled" Width="90%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="rblGender" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblGender" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile" SortExpression="Mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtMobile" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblMobile" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Company" SortExpression="CName">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCompany" runat="server" DataSourceID="SqlDataSource2" DataTextField="CName" DataValueField="CID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AkhileshConnectionString %>" SelectCommand="SELECT [CName], [CID] FROM [Company] WHERE ([CName] IS NOT NULL)"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCompany" runat="server" Text='<%# Bind("Company") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Location" SortExpression="Location">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlLocation" runat="server" DataSourceID="SqlDataSource3" DataTextField="Location" DataValueField="Location"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:AkhileshConnectionString %>" SelectCommand="SELECT [Location] FROM [Company] WHERE ([CName] IS NOT NULL)"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblLocation" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IsAdmin" SortExpression="IsAdmin">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkAdmin" runat="server" Checked='<%# Bind("IsAdmin") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkAdmin" runat="server" Checked='<%# Bind("IsAdmin") %>' Enabled="false" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Larger" />
            <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
            <RowStyle ForeColor="#000066" Font-Bold="True" Font-Size="Larger" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AkhileshConnectionString %>"></asp:SqlDataSource>
        
        
    </div>
</asp:Content>
