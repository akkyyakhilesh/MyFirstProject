<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="MyFirstProject.user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>User Activity Page</h1>
    <h3 style="color:red;text-align:center">Please Sign Up or Sign in to Continue..</h3>
    <div class="row">
    <div class="col-lg-3"></div>
    <div class="col-lg-6">
        
        <div class="row">
            <div class="col-lg-6">
                 <h4>Not Signed Up yet?</h4>
                <h3>Click here to go to Sign Up Page:</h3>
                <asp:Button ID="btnSignUp" runat="server" OnClick="goToSignUp" Text="Sign Up" />
            </div>
            <div class="col-lg-6">
                <h4>Already Signed Up?</h4>
                <h3>Click here to go to Login Page:</h3>
                <asp:Button ID="btnLogin" runat="server" OnClick="goToLogin" Text="Login Page" />
            </div>
        </div>
    </div>
    <div class="col-lg-3"></div>
    </div>
</asp:Content>
