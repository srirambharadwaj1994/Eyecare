<%@ Page Title="" Language="C#" MasterPageFile="~/Optometrist/Optometrist.Master" AutoEventWireup="true" CodeBehind="ConfirmedAppointements.aspx.cs" Inherits="ECS.Optometrist.ConfirmedAppointements" %>
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
        <td class="auto-style3"><strong>Patients Appointment List</strong></td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10" GridLines="Horizontal" HorizontalAlign="Center" Width="924px" EmptyDataText="No Appointments" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ImageField ControlStyle-Height="150" ControlStyle-Width="150" DataImageUrlField="Photo" HeaderText="Photo">
                        <ControlStyle Height="100px" Width="100px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" />
                    <asp:ButtonField CommandName="Select" HeaderText="Medication " Text="Medication" />
                </Columns>
                <EmptyDataRowStyle Font-Size="14pt" ForeColor="Blue" />
                <HeaderStyle BackColor="Yellow" ForeColor="#3366FF" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td >&nbsp;</td>
    </tr>
</table>
</asp:Content>
