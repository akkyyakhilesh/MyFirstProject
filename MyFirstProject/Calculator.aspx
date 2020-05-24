<%@ Page Title="" Language="C#" MasterPageFile="~/Assignment.Master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeBehind="Calculator.aspx.cs" Inherits="MyFirstProject.Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn {
            height:50px;
            width:60px;
            font-weight:bold;
        }
        .auto-style1 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Calculator:</h2>
    <div class="row">
        <div class="col-lg-5 col-md-5">
            <asp:HiddenField ID="hdnVal" runat="server" />
        <table border="1">
                <tr>
                    <td colspan="4">
                        <asp:textbox ID="txtResult" runat="server" ReadOnly="true" Height="50px" Width="245px"></asp:textbox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ButtonClear" AutopostBack="false" CssClass="btn" runat="server" Text="C" OnClick="ButtonClear_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="ButtonAllClear" AutopostBack="false" CssClass="btn" runat="server" Text="AC" OnClick="ButtonAllClear_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="ButtonRoot" AutopostBack="false" CssClass="btn" runat="server" Text="√" OnClick="ButtonRoot_Click"/>
                    </td>
                    <td>
                        <asp:Button ID="ButtonPercent" AutopostBack="false" CssClass="btn" runat="server" Text="%" OnClick="ButtonPercent_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" AutopostBack="false" CssClass="btn" runat="server" Text="1" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" AutopostBack="false" CssClass="btn" runat="server" Text="2" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" AutopostBack="false" CssClass="btn" runat="server" Text="3" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="ButtonDivide" AutopostBack="false" CssClass="btn" runat="server" Text="÷" OnClick="ButtonDivide_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button4" AutopostBack="false" CssClass="btn" runat="server" Text="4" OnClick="Button4_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" AutopostBack="false" CssClass="btn" runat="server" Text="5" OnClick="Button5_Click" />

                    </td>
                    <td>
                        <asp:Button ID="Button6" AutopostBack="false" CssClass="btn" runat="server" Text="6" OnClick="Button6_Click" />

                    </td>
                    <td>
                        <asp:Button ID="ButtonMul" AutopostBack="false" CssClass="btn" runat="server" Text="*" OnClick="ButtonMul_Click" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" AutopostBack="false" CssClass="btn" runat="server" Text="7" OnClick="Button7_Click" />

                    </td>
                    <td>
                        <asp:Button ID="Button8" AutopostBack="false" CssClass="btn" runat="server" Text="8" OnClick="Button8_Click" />

                    </td>
                    <td>
                        <asp:Button ID="Button9" AutopostBack="false" CssClass="btn" runat="server" Text="9" OnClick="Button9_Click" />

                    </td>
                    <td>
                        <asp:Button ID="ButtonSub" AutopostBack="false" CssClass="btn" runat="server" Text="-" OnClick="ButtonSub_Click" />

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="ButtonDec" AutopostBack="false" CssClass="btn" runat="server" Text="." OnClick="ButtonDec_Click" />

                    </td>
                    <td>
                        <asp:Button ID="Button0" AutopostBack="false" CssClass="btn" runat="server" Text="0" OnClick="Button0_Click" />

                    </td>
                    <td>
                        <asp:Button ID="ButtonEqual" AutopostBack="false" CssClass="btn" runat="server" Text="=" OnClick="ButtonEqual_Click" />

                    </td>
                    <td>
                        <asp:Button ID="ButtonAdd" AutopostBack="false" CssClass="btn" runat="server" Text="+" OnClick="ButtonAdd_Click" />

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div class="col-lg-7 col-md-7">
            <table>
                <tr><th class="auto-style1">Operator Type</th>
                    <th colspan="4" style="text-align:center" class="auto-style1">Input</th>
                    <th class="auto-style1">Output</th>
                </tr>
                <tr><td rowspan="2" style="font-weight: bold">Unary Operator</td>
                    <td colspan="2" >
                        <asp:TextBox ID="inputInc" TextMode="Number" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="lblIncrement" runat="server" Text="++" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnResInc" runat="server" Text="=" OnClick="btnResInc_Click" Font-Bold="True" /></td>
                    <td>
                        <asp:TextBox ID="resInc" ReadOnly="true" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="inputDec" TextMode="Number" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:Label ID="lblDecrement" runat="server" Text="--" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="btnResDec" runat="server" Text="=" Font-Bold="True" OnClick="btnResDec_Click" /></td>
                    <td>
                        <asp:TextBox ID="resDec" ReadOnly="true" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td rowspan="4" style="font-weight: bold">Binary Operator</td>
                    <td>
                        <asp:TextBox ID="addInput1" runat="server"></asp:TextBox></td>
                    <td style="text-align: center">
                        <asp:Label ID="lblAdd" runat="server" Text="+" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="addInput2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnResAdd" runat="server" Text="=" Font-Bold="True" OnClick="btnResAdd_Click"  />
                    </td>
                    <td>
                        <asp:TextBox ID="txtResAdd" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="subInput1" runat="server"></asp:TextBox></td>
                    <td style="text-align: center">
                        <asp:Label ID="lblSub" runat="server" Text="-" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="subInput2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnResSub" runat="server" Text="=" Font-Bold="True" OnClick="btnResSub_Click"  />
                    </td>
                    <td>
                        <asp:TextBox ID="txtResSub" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="mulInput1" runat="server"></asp:TextBox></td>
                    <td style="text-align: center">
                        <asp:Label ID="lblMul" runat="server" Text="x" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="mulInput2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnResMul" runat="server" Text="=" Font-Bold="True" OnClick="btnResMul_Click"  />
                    </td>
                    <td>
                        <asp:TextBox ID="txtResMul" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="divInput1" runat="server"></asp:TextBox></td>
                    <td style="text-align: center">
                        <asp:Label ID="lblDiv" runat="server" Text="÷" Font-Bold="True" Font-Size="X-Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="divInput2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnResDiv" runat="server" Text="=" Font-Bold="True" OnClick="btnResDiv_Click"  />
                    </td>
                    <td>
                        <asp:TextBox ID="txtResDiv" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Relational Operator</td>
                    <td>
                        <asp:TextBox ID="RelationalInp1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlRelational" runat="server" Font-Bold="True" Font-Size="Large">
                            <asp:ListItem>&lt;</asp:ListItem>
                            <asp:ListItem>&gt;</asp:ListItem>
                            <asp:ListItem>&lt;=</asp:ListItem>
                            <asp:ListItem>&gt;=</asp:ListItem>
                            <asp:ListItem>==</asp:ListItem>
                            <asp:ListItem>!=</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="RelationalInp2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnRelational" runat="server" Text="=" Font-Bold="True" OnClick="btnRelational_Click" />
                    </td>
                    <td>
                        <asp:TextBox ID="txtRelationRes" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <h2>Area Calculator:</h2>
    <h3>Enter the Radius(in meters) to calculate the area of the circle : <asp:TextBox ID="txtRadius" runat="server" Width="71px"></asp:TextBox>
        <asp:Button ID="btnCircleArea" runat="server" Text="Get Area" OnClick="btnCircleArea_Click" />
        <asp:Label ID="lblCircleArea" runat="server"></asp:Label></h3>
    <h3>Enter Side(in cm) of Square to calculate the area of that square :<asp:TextBox ID="sideSquare" runat="server" Width="77px"></asp:TextBox>
        <asp:Button ID="btnSquareArea" runat="server" Text="Get Area" OnClick="btnSquareArea_Click" /><asp:Label ID="lblSquareArea" runat="server" Text=""></asp:Label> </h3>
    <h3>Enter Length and Breadth of the Rectangle to Calculate Area, Length :<asp:TextBox ID="txtLength" runat="server" Width="67px"></asp:TextBox>
        Breadth :<asp:TextBox ID="txtBreadth" runat="server" Width="55px"></asp:TextBox><asp:Button ID="btnRectArea" runat="server" Text="Get Area" OnClick="btnRectArea_Click" /><asp:Label ID="lblRectArea" runat="server" Text=""></asp:Label></h3>
</asp:Content>
