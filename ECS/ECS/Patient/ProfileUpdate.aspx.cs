using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace WE.User
{
    public partial class ProfileInfo : System.Web.UI.Page
    {
        static string photo;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindProfile();
                BindPhoto();
            }
        }

        void bindProfile()
        {
            try
            {

                con.Open();

                string query = "Select * from Register_tb where Username='" + Session["Username"].ToString() + "' ";
                SqlCommand cmd = new SqlCommand(query, con);

                SqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    txtName.Text = dr["Name"].ToString();
                    txtMobile_No.Text = dr["MobileNo"].ToString();

                    txtEmail.Text = dr["Email"].ToString();

                    txtaddress.Text = dr["Address"].ToString();
                    photo = dr["Photo"].ToString();


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

        void BindPhoto()
        {
            try
            {

                con.Open();

                string query = "Select * from Register_tb where Username='" + Session["Username"].ToString() + "' ";
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


        protected void Imgbtn_Register_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string file_name_photo = Path.GetFileName(Photo_Upload.PostedFile.FileName);
                string file_photo = "~/image/" + file_name_photo;
                Photo_Upload.SaveAs(Server.MapPath(file_photo));


                if (Photo_Upload.HasFile)
                {
                    //Open the database connection
                    con.Open();

                    //Query to insert values to table

                    string query = "Update Register_tb set Name='" + txtName.Text + "',Photo='" + file_photo + "',MobileNo='" + txtMobile_No.Text + "',Email='" + txtEmail.Text + "',Address='" + txtaddress.Text + "' where Username='" + Session["Username"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int i = cmd.ExecuteNonQuery();

                    if (i == 1)
                    {
                        string sScript = "<script language='javascript'> alert('Updated Successfully'); window.location.href = 'ProfileUpdate.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                        //lblmsg.Text = "Document Upload Successfully";
                    }
                    else
                    {
                        string sScript = "<script language='javascript'> alert('Failed to Add details'); window.location.href = 'ProfileUpdate.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);
                    }

                }
                else
                {
                    //Open the database connection
                    con.Open();

                    //Query to insert values to table

                    string query = "Update StudentInfo_tb set Name='" + txtName.Text + "', MobileNo='" + txtMobile_No.Text + "',Email='" + txtEmail.Text + "' where Username='" + Session["Username"].ToString() + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int i = cmd.ExecuteNonQuery();

                    if (i == 1)
                    {
                        string sScript = "<script language='javascript'> alert('Updated Successfully'); window.location.href = 'ProfileUpdate.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                        //lblmsg.Text = "Document Upload Successfully";
                    }
                    else
                    {
                        string sScript = "<script language='javascript'> alert('Failed to Add details'); window.location.href = 'ProfileUpdate.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);
                    }
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