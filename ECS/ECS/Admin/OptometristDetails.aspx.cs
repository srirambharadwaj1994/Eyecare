using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace VS.Admin
{
    public partial class OfficersDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Imgbtn_Register_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string file_name_photo = Path.GetFileName(Photo_Upload.PostedFile.FileName);
                string file_photo = "~/image/" + file_name_photo;
                Photo_Upload.SaveAs(Server.MapPath(file_photo));

                //Open the database connection
                con.Open();

                //Query to insert values to table

                string query = "Insert into Optometrist_tb(Name,Designation,Photo,Gender,Address,Email,MobileNo,Username,Password)values('" + txtName.Text + "','" + txtDesignation.Text + "','" + file_photo + "','" + rblGender.SelectedValue + "','" + txtAddress.Text + "','" + txtEmail.Text + "','" + txtMobile_No.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();

                if (i == 1)
                {
                    string sScript = "<script language='javascript'> alert('Submitted Successfully'); window.location.href = 'OptometristDetails.aspx'; </script>";
                    ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                    //lblmsg.Text = "Document Upload Successfully";
                }

                else
                {
                    string sScript = "<script language='javascript'> alert('Failed !Check the details'); window.location.href = 'OptometristDetails.aspx'; </script>";
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