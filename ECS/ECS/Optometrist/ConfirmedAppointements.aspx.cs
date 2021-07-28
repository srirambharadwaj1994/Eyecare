using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace ECS.Optometrist
{
    public partial class ConfirmedAppointements : System.Web.UI.Page
    {
        static string Name;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindProfile();
                BindData();

            }
        }

        void bindProfile()
        {
            try
            {

                con.Open();

                string query = "Select * from Optometrist_tb where Username='" + Session["username"].ToString() + "' ";
                SqlCommand cmd = new SqlCommand(query, con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    Name = dr["Name"].ToString();



                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message + "Check the details");
            }

            finally
            {
                con.Close();
            }
        }


        void BindData()
        {
            try
            {

                con.Open();

                string query = "Select * from AppointmentInfo_tb where DoctorName='" + Name + "' and Confirmation='"+"Confirm"+"' ";
                SqlCommand cmd = new SqlCommand(query, con);

                SqlDataReader dr = cmd.ExecuteReader();

                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message + "Check the details");
            }

            finally
            {
                con.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Session["PatientName"] = GridView1.SelectedRow.Cells[1].Text;
            Response.Redirect("~/Optometrist/MedicationDetails.aspx");
        }
    }
   
}