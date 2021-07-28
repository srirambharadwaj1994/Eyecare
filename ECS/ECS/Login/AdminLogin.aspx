<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ECS.Login.AdminLogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            color: #FFFFFF;
            font-size: 40pt;
            font-weight: 700;
            text-align: left;
            font-family: "ARIAL Black";
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style7 {
        color: #FFFF00;
            font-size: 10pt;
        }
        .auto-style5 {
            width: 73px;
            height: 58px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: 2px Solid #0099FF; width: 30%; height: 95px; margin-left: 432px; background-color: #FFFFFF;">
        <tr>
            <td class="auto-style9" colspan="3" style="background-color: #0099FF"><strong style="font-size: 12pt"><span class="auto-style8">Admin Login</span>&nbsp;&nbsp; </strong>
                <asp:Label ID="lblmsg" runat="server" CssClass="auto-style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </td>
            <td rowspan="2">
                <img alt="" class="auto-style5" src="../image/Admin.png" /></td>
        </tr>
        <tr>
            <td >Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                <asp:ImageButton ID="btnLogin" runat="server" Height="28px" ImageUrl="~/image/Login-Button.jpg" OnClick="btnLogin_Click" Width="110px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
