using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;

namespace ECS.Optometrist
{
    public partial class PrescriptionDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
           txtPatientName.Text= Session["PatientName"].ToString();
        }

        protected void Imgbtn_Register_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                

                //Open the database connection
                con.Open();

                //Query to insert values to table

                string query = "Insert into Medication_tb(PatientName,MedicationType,MedicationName,Qty,Direction,PrescribedOn,Username)values('" + txtPatientName.Text + "','" + ddlMedicationType.SelectedItem.Text + "','" + txtMedicationName.Text + "','" + txtQty.Text + "','" + txtDirections.Text + "','" + txtPrescribed.Text + "','" + Session["username"].ToString() + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();

                if (i == 1)
                {
                    string sScript = "<script language='javascript'> alert('Submitted Successfully'); window.location.href = 'MedicationDetails.aspx'; </script>";
                    ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                    //lblmsg.Text = "Document Upload Successfully";
                }

                else
                {
                    string sScript = "<script language='javascript'> alert('Failed !Check the details'); window.location.href = 'MedicationDetails.aspx'; </script>";
                    ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                con.Close(); //close the database connection
            }
        }
    }
}