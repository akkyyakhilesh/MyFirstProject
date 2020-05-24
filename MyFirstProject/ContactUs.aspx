<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MyFirstProject.ContactUs" %>

<%@ Register Src="~/ContactUserControl.ascx" TagPrefix="uc1" TagName="ContactUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            left: 0px;
            top: 0px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contact Us</h1>
    <div class="row">
         <div class="col-lg-4 col-md-4"></div>
        <div class="col-lg-4 col-md-4">
            <uc1:ContactUserControl runat="server" ID="ContactUserControl" />
        </div>
        <div class="col-lg-4 col-md-4"></div>        
        </div>
        <div class="auto-style5"></div>
    <div>
        
    </div>
</asp:Content>
