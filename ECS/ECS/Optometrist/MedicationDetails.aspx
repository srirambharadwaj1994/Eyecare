<%@ Page Title="" Language="C#" MasterPageFile="~/Optometrist/Optometrist.Master" AutoEventWireup="true" CodeBehind="MedicationDetails.aspx.cs" Inherits="ECS.Optometrist.PrescriptionDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .style3
    {
        width: 63%;
        margin-left: 263px;
            height: 393px;
        }
    .style4
    {
        color: #FFFFFF;
        font-weight: bold;
        font-size: 18pt;
        background-color: #FF3300;
            text-align: center;
        }
        .style5
        {
            width: 264px;
            height: 226px;
            }
        .style6
        {
            height: 46px;
        }
        .auto-style7 {
            height: 101px;
        }
        .auto-style8 {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style3" frame="box" style="border: 3px solid #0099FF; background-color: #FFFFFF">
        <tr>
            <td class="style4" colspan="4">Medication Details</td>
        </tr>
        <tr>
            <td>Patient Name</td>
            <td>
                <asp:TextBox ID="txtPatientName" runat="server" Height="19px" placeholder="Your full name" Width="253px" ReadOnly="True"></asp:TextBox>
            </td>
            <td rowspan="7" valign="middle" style="text-align: center">
                <img alt="" class="style5" src="../image/medic.jpeg" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Medication Type</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlMedicationType" runat="server">
                    <asp:ListItem>Test</asp:ListItem>
                    <asp:ListItem>Drugs</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td>Medication Name</td>
            <td>
                <asp:TextBox ID="txtMedicationName" runat="server" Height="18px" placeholder="Enter Medication Name" Width="292px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>
                <asp:TextBox ID="txtQty" runat="server" Height="16px" placeholder="Enter Quantity" TextMode="Number" Width="59px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Directions of Use</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtDirections" runat="server" Height="58px" placeholder="Enter Directions" Width="321px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td>Prescribed on</td>
            <td>
                <asp:TextBox ID="txtPrescribed" runat="server" Height="16px" placeholder="Enter Date" Width="150px" TextMode="Date"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style6"></td>
            <td class="style6">&nbsp;
                <asp:ImageButton ID="Imgbtn_Register" runat="server" Height="36px" ImageUrl="~/image/submit_arrow.png" onclick="Imgbtn_Register_Click" Width="156px" />
            </td>
            <td class="style6"></td>
        </tr>
    </table>
</asp:Content>
