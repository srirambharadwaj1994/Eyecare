<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ViewEditOptometristnfo.aspx.cs" Inherits="VS.Admin.ViewEditOfficersInfo" %>
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
            <td class="auto-style3"><strong>View Edit OptometristDetails</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="10" DataKeyNames="Oid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="924px">
                    <Columns>
                        <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                        </asp:ImageField>
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/delete-icon.png" HeaderText="Delete" ShowDeleteButton="True" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/image/edit_icon.png" HeaderText="Edit / Cancel" ShowEditButton="True" />
                    </Columns>
                    <HeaderStyle BackColor="#0099FF" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$Connectionstrings:DB%>" DeleteCommand="Delete from  Optometrist_tb Where Oid=@Oid" selectcommand="SELECT * FROM  Optometrist_tb " UpdateCommand="Update Optometrist_tb set Name=@Name,Designation=@Designation,Photo=@Photo,Gender=@Gender,Address=@Address,Email=@Email,MobileNo=@MobileNo Where Oid = @Oid">
                    <%--<selectparameters>
                        <asp:sessionparameter name="Username" sessionfield="Username" />
                    </selectparameters>--%></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
