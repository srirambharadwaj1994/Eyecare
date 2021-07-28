<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewAppointmentDetails.aspx.cs" Inherits="ECS.Admin.ViewAppointmentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style3 {
            font-size: 20pt;
            color: #0099FF;
        width: 1190px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 94%; background-color: #FFFFFF;">
        <tr>
            <td class="auto-style3"><strong>View Patients Appointment Details</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblemail" runat="server" style="color: #FF0000; font-size: 14pt"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10"  DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" Width="924px" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:ImageField ControlStyle-Height="150" ControlStyle-Width="150" DataImageUrlField="Photo" HeaderText="Photo">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="DoctorName" HeaderText="Dr. Name" />
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Time" HeaderText="Time" />

                        
             
                        <asp:ButtonField ButtonType="Button" CommandName="Confirm" Text="Confirm" />
                          <asp:ButtonField ButtonType="Button" CommandName="Cancel" Text="Cancel" />

                        
             
                    </Columns>
                    <HeaderStyle BackColor="White" ForeColor="#3366FF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$Connectionstrings:DB%>"  selectcommand="SELECT * FROM  AppointmentInfo_tb " ><%--<selectparameters>
                        <asp:sessionparameter name="Username" sessionfield="Username" />
                    </selectparameters>--%></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
