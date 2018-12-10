<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="MyFirstProject.blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="MyStyle.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 style="text-align:center;border-bottom:2px solid;border-top:2px solid;padding:5px">Blog by Akhilesh</h1>
    </div>
    <div class="row">
        <div class="col-lg-3">
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="WindowsHelp">
                <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                <Nodes>
                    <asp:TreeNode NavigateUrl="~/blog.aspx" Text="Blog" Value="New Node">
                        <asp:TreeNode NavigateUrl="~/Assignments.aspx" Text="Assignment" Value="Assignment">
                            <asp:TreeNode NavigateUrl="~/DataList.aspx" Text="Data List" Value="Data List"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/DetailsView.aspx" Text="Details View" Value="Details View"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/FormView.aspx" Text="Form View" Value="Form View"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/GridView.aspx" Text="Grid View" Value="Grid View"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/ListView.aspx" Text="List View" Value="List View"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Technologies" Value="Tech Blog">
                            <asp:TreeNode Text="Java" Value="Java"></asp:TreeNode>
                            <asp:TreeNode Text="Asp.Net" Value="Asp.Net"></asp:TreeNode>
                            <asp:TreeNode Text="Python" Value="Python"></asp:TreeNode>
                            <asp:TreeNode Text="Angular" Value="Angular"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="Entertainment" Value="Entertainment">
                            <asp:TreeNode Text="Jokes" Value="Jokes"></asp:TreeNode>
                            <asp:TreeNode Text="Stories" Value="Stories"></asp:TreeNode>
                            <asp:TreeNode Text="Poems" Value="Poems"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode Text="My Thoughts" Value="My Thoughts"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="18px" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="1px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
        <div class="col-lg-9">
            <h2>Blog Updates will be posted here:</h2>
        </div>
    </div>
</asp:Content>
