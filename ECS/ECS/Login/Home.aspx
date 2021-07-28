<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Login.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WE.Login.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            
        .style3
        {
            width: 100%;
        }
        .auto-style8 {
            text-align: center;
            font-size: 20pt;
            color: #0000FF;
            background-color: #CCCCCC;
            width: 803px;
        }
        .auto-style3 {
            text-align: center;
            font-size: 20pt;
            color: #0000FF;
            background-color: #CCCCCC;
        }
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .style14
        {
            height: 27px;
        }
        .auto-style13 {
            text-align: justify;
            height: 113px;
            background-color: #CCCCFF;
        }
        .auto-style17 {
            font-size: large;
            color: #0066FF;
            background-color: #CCCCFF;
        }
        .auto-style18 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style19 {
            background-color: #CCCCFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3" style="background-color: #FFFFFF; margin-left: 0px; height: 55px;">
        <tr>
            <td class="auto-style8"><strong style="text-align: center"><em>LATEST NEWS</em></strong></td>
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" Height="55px" ImageUrl="~/image/patient-icon.jpg" Width="70px" />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login/PatientsLogin.aspx" style="font-size: 12pt; color: #0033CC">Patient Login</asp:HyperLink>
            </td>
            <td aria-orientation="horizontal" class="auto-style11">
                <asp:Image ID="Image1" runat="server" Height="56px" ImageUrl="~/image/Admin.png" Width="73px" />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login/AdminLogin.aspx">Admin Login</asp:HyperLink>
            </td>
        </tr>
        </table>
    <p style="color:#CC0000; font-size:25pt;font-weight:900;">
        <marquee style="height: 36px">For Online Appointment Please login</marquee></p>
    <table class="style3" style="background-color: #CCCCFF; margin-left: 0px; margin-top: 0px;">
        <tr>
            <td colspan="2" style="font-size: 20pt; color: #FFFFFF; font-weight: 700">
                <p class="auto-style13">
                   
                    <span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">The human </span><b class="auto-style18" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="auto-style19">eye </span></b>
                    <span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">is organ of vision. Now days, good vision is critical and essential to conducting activities of daily living easily. It is </span><b class="auto-style18" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="auto-style19">important </span></b>
                    <span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">for language, and affects developmental learning, communicating, working, health and quality of life. It is very&nbsp; </span><b class="auto-style18" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="auto-style19">important </span></b>
                    <span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">to take care of your eyesight.The human senses are our contact to the environment.By far the most </span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
                    <b class="auto-style18" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="auto-style19">important</span></b></span><span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">organs of sense are our eyes. We perceive up to 80% of all impressions by means of our </span>
                    <span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;"><b class="auto-style18" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="auto-style19">sight</span></b><span class="auto-style17" style="font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">.And 
                    if other senses such as taste or smell stop working, it&#39;s the eyes that best protect us from danger.</span></span></p> 
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
            
        </tr>
    </table>
</asp:Content>
