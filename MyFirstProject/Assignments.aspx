<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" CodeBehind="Assignments.aspx.cs" Inherits="MyFirstProject.Assignments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-lg-2 {
           width:20%;
           text-align:center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Assignment Page:</h2>
    <div class="row">
            <div class="col-lg-2">
                <h3>Example of DataList</h3>
                <asp:Button ID="btnDataList" runat="server" Text="Click to View" OnClick="showDataList" />
            </div>

            <div class="col-lg-2">
                <h3>Example of DetailsView</h3>
                <asp:Button ID="btnDetailsView" runat="server" Text="Click to View" OnClick="showDetailsView"/>
            </div>

            <div class="col-lg-2">
                <h3>Example of FormView</h3>
                <asp:Button ID="btnFormView" runat="server" Text="Click to View" OnClick="showFormView" />
            </div>

            <div class="col-lg-2">
                <h3>Example of GridView</h3>
                <asp:Button ID="btnGridView" runat="server" Text="Click to View" OnClick="showGridView" />
            </div>
            <div class="col-lg-2">
                <h3>Example of ListView</h3>
                <asp:Button ID="btnListView" runat="server" Text="Click to View" OnClick="showListView" />
            </div>
            
        </div>
</asp:Content>
