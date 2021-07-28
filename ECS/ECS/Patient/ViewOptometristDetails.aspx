<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.Master" AutoEventWireup="true" CodeBehind="ViewOptometristDetails.aspx.cs" Inherits="ECS.Patient.ViewOptometristDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">







        .auto-style3 {
            font-size: 20pt;
            color: #CC3300;
        width: 1190px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 94%; background-color: #FFFFFF;">
        <tr>
            <td class="auto-style3"><strong>View Optometrist Details</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10"  DataSourceID="SqlDataSource1" GridLines="Horizontal" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="924px">
                    <Columns>
                        <asp:ImageField ControlStyle-Height="150" ControlStyle-Width="150" DataImageUrlField="Photo" HeaderText="Photo">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:ButtonField CommandName="Select" HeaderText="Appointment" Text="Appointment" HeaderImageUrl="~/image/dl_calendar.png" />
                    </Columns>
                    <HeaderStyle BackColor="White" ForeColor="#CC3300" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$Connectionstrings:DB%>"  selectcommand="SELECT * FROM  Optometrist_tb " >
                    <%--<selectparameters>
                        <asp:sessionparameter name="Username" sessionfield="Username" />
                    </selectparameters>--%></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
