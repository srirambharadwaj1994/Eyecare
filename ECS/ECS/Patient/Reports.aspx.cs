using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data.SqlClient;

using System.Configuration;

namespace ECS.Patient
{
    public partial class Reports : System.Web.UI.Page
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

                string query = "Select * from Register_tb where Username='" + Session["username"].ToString() + "' ";
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

                string query = "Select * from Medication_tb where PatientName='" + Name + "' ";
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
    }
}