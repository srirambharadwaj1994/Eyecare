<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="PatientsLogin.aspx.cs" Inherits="ECS.Login.PatientsLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style8 {
            font-size: 12pt;
            text-align: left;
        }
       
        .auto-style11 {
        font-size: 12pt;
    }
       
        .auto-style7 {
            color: #FFFF66;
            font-size: 12pt;
        }
               
        .auto-style9 {
        height: 29px;
        color: #000000;
    }
       
        .auto-style5 {
            height: 116px;
            width: 137px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: 1px solid #CC3300; width: 34%; height: 180px; margin-left: 432px; color: #FFFFFF; background-color: #FFFFFF;">
        <tr>
            <td  colspan="3" style="background-color: #990000; color: #FFFFFF;"><strong><span class="auto-style8">Patient Login</span><span class="auto-style11">&nbsp;&nbsp; </span></strong>
                <asp:Label ID="lblmsg" runat="server" CssClass="auto-style7"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Username</td>
            <td>
                <asp:TextBox ID="txtUsername" runat="server" Width="145px"></asp:TextBox>
            </td>
            <td rowspan="3">
                <img alt="" class="auto-style5" src="../image/patient-icon.jpg" /></td>
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
                <asp:ImageButton ID="ImgtbnLogin" runat="server" Height="30px" ImageUrl="~/image/Login-Button.jpg" OnClick="ImgtbnLogin_Click" Width="125px" />
            </td>
        </tr>
    </table>
</asp:Content>
