﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace WE.Login
{
    public partial class Register : System.Web.UI.Page
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

                string query = "Insert into Register_tb(Name,Photo,Gender,Address,MobileNo,Email,Username,Password)values('" + txtName.Text + "','" + file_photo + "','" + rblGender.SelectedValue + "','" + txtAddress.Text + "','" + txtMobile_No.Text + "','" + txtEmail.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int i = cmd.ExecuteNonQuery();

                if (i == 1)
                {
                    string sScript = "<script language='javascript'> alert('Registered Successfully'); window.location.href = 'PatientsLogin.aspx'; </script>";
                    ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                    //lblmsg.Text = "Document Upload Successfully";
                }

                else
                {
                    string sScript = "<script language='javascript'> alert('Failed !Check the details'); window.location.href = 'Register.aspx'; </script>";
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