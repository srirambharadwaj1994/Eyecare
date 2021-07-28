<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="OptometristLogin.aspx.cs" Inherits="WE.Login.User_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style5 {
            height: 103px;
            width: 139px;
        }
        .auto-style6 {
            font-size: 12pt;
        height: 19px;
    }
        .auto-style7 {
            color: #000000;
            font-size: 12pt;
        }
        .auto-style8 {
            font-size: 12pt;
            text-align: left;
        }
       
        .auto-style9 {
        height: 29px;
        color: #000000;
    }
       
        .auto-style11 {
        font-size: 12pt;
    }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: 1px solid #000000; width: 34%; height: 162px; margin-left: 432px; color: #FFFFFF; background-color: #FFFFFF;">
        <tr>
            <td colspan="3" style="background-color: #FF9900; color: #FFFFFF;"><font size="3"><strong>Optometrist</strong></font><strong><span class="auto-style8"> Login</span><span class="auto-style11">&nbsp;&nbsp; </span> </strong>
                <asp:Label ID="lblmsg" runat="server" CssClass="auto-style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td rowspan="3">
                <img alt="" class="auto-style5" src="../image/Male_Doctor.png" /></td>
        </tr>
        <tr>
            <td class="auto-style9">Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="143px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                <asp:ImageButton ID="btnLogin" runat="server" Height="35px" ImageUrl="~/image/Login-Button.jpg" OnClick="btnLogin_Click" Width="114px" />
            </td>
        </tr>
    </table>
</asp:Content>
