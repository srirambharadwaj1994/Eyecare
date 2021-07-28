<%@ Page Title="" Language="C#" MasterPageFile="~/Optometrist/Optometrist.Master" AutoEventWireup="true" CodeBehind="ViewEditMedicationDetails.aspx.cs" Inherits="ECS.Optometrist.ViewEditMedicationDetails" %>
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
            <td class="auto-style3"><strong>View Edit Medication Details</strong></td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="10" DataKeyNames="Mid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="924px" EmptyDataText="Not Medication Details">
                    <Columns>
                        <asp:BoundField DataField="PatientName" HeaderText="Patient Name" />
                        <asp:BoundField DataField="MedicationType" HeaderText="Medication Type" />
                        <asp:BoundField DataField="MedicationName" HeaderText="Medication Name" />
                        <asp:BoundField DataField="Qty" HeaderText="Qty" />
                        <asp:BoundField DataField="Direction" HeaderText="Direction" />
                        <asp:BoundField DataField="PrescribedOn" HeaderText="Prescribed On" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/image/delete-icon.png" HeaderText="Delete" ShowDeleteButton="True" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/image/edit_icon.png" HeaderText="Edit / Cancel" ShowEditButton="True" />
                    </Columns>
                    <EmptyDataRowStyle Font-Size="12pt" ForeColor="Blue" />
                    <HeaderStyle BackColor="#FF3300" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$Connectionstrings:DB%>" DeleteCommand="Delete from  Medication_tb Where Mid=@Mid" selectcommand="SELECT * FROM  Medication_tb where Username=@username" UpdateCommand="Update Medication_tb set PatientName=@PatientName,MedicationType=@MedicationType,MedicationName=@MedicationName,Qty=@Qty,Direction=@Direction,PrescribedOn=@PrescribedOn Where Mid = @Mid">
                   
                     <selectparameters>
                        <asp:sessionparameter name="username" sessionfield="Username" />
                    </selectparameters>

                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
