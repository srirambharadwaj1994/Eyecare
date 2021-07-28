<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ECS.Patient.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">








        .auto-style3 {
            font-size: 20pt;
            color: #FF3300;
        width: 1190px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 94%; background-color: #FFFFFF;">
        <tr>
            <td class="auto-style3"><strong>Medication Reports</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="10" HorizontalAlign="Center" Width="924px">
                    <Columns>
                        <asp:BoundField DataField="Username" HeaderText="Dr. Name" />
                        <asp:BoundField DataField="MedicationType" HeaderText="Medication Type" />
                        <asp:BoundField DataField="MedicationName" HeaderText="Medication Name" />
                        <asp:BoundField DataField="Qty" HeaderText="Qty" />
                        <asp:BoundField DataField="Direction" HeaderText="Direction" />
                        <asp:BoundField DataField="PrescribedOn" HeaderText="Prescribed On" />
                    </Columns>
                    <HeaderStyle BackColor="#FF3300" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
