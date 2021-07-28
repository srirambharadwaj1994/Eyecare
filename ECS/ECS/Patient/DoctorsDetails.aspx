<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="DoctorsDetails.aspx.cs" Inherits="ECS.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 201px;
        }
        .auto-style10 {
            width: 201px;
            color: #FF0000;
            font-size: 20pt;
        }
        .auto-style11 {
            width: 201px;
            font-weight: bold;
            font-size: 16pt;
        }
        .auto-style12 {
            font-size: 16pt;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="border: 3px solid #FF0000; width: 48%; height: 264px; margin-left: 342px;">
        <tr>
            <td class="auto-style10"><strong>Doctors Details</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Name</td>
            <td class="auto-style12">Contact No.</td>
        </tr>
        <tr>
            <td class="auto-style9">Dr.Rashmi</td>
            <td>9986036542</td>
        </tr>
        <tr>
            <td class="auto-style9">Dr.Kumar prasad</td>
            <td>9986054286</td>
        </tr>
        <tr>
            <td class="auto-style9">Dr.Mahesh</td>
            <td>7785096353</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
