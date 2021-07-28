﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
namespace WE.Login
{
    public partial class User_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                //Open the database connection
                con.Open();
                //Query to select values from table

                string query = "Select Username,Password from Optometrist_tb where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "' ";
                SqlCommand cmd = new SqlCommand(query, con);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    Session["username"] = txtUsername.Text.ToString();

                    Response.Redirect("~/Optometrist/ConfirmedAppointements.aspx");
                }

                else
                {
                    lblmsg.Text = "incorrect username or password";
                }

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                con.Close();
            }
        }
    }
}