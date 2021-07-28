using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.IO;

using System.Net;
using System.Net.Mail;

namespace ECS.Admin
{
    public partial class ViewAppointmentDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            

            // Response.Redirect("~/Patient/AppointementDetails.aspx");
            if (e.CommandName == "Confirm")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // Get the current row
                
                
                
                Session["PatientName"] = (GridView1.Rows[rowIndex].Cells[2].Text);
                Session["Date"] = (GridView1.Rows[rowIndex].Cells[7].Text);
                Session["Time"] =(GridView1.Rows[rowIndex].Cells[8].Text);


                try
                {


                    //Open the database connection
                    con.Open();

                    //Query to insert values to table

                    string query = "Update AppointmentInfo_tb set Confirmation='" + "Confirm" + "' where PatientName='" + Session["PatientName"].ToString() + "' and Date='" + Session["Date"].ToString() + "' and Time='" + Session["Time"] + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int i = cmd.ExecuteNonQuery();

                    if (i == 1)
                    {
                        string sScript = "<script language='javascript'> alert('Confirmed Successfully'); window.location.href = 'ViewAppointmentDetails.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                        //lblmsg.Text = "Document Upload Successfully";
                    }

                    else
                    {
                        string sScript = "<script language='javascript'> alert('Failed !Check the details'); window.location.href = 'ViewAppointmentDetails.aspx'; </script>";
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

               
                
                try
                {
                    string email = GridView1.Rows[rowIndex].Cells[6].Text;

                    SmtpClient smtpc = new SmtpClient("smtp.gmail.com");

                    smtpc.Port = 587;

                    smtpc.EnableSsl = true;

                    smtpc.UseDefaultCredentials = false;

                    smtpc.Credentials = new NetworkCredential("v4tech.project@gmail.com", "prasadv4tech");

                    MailMessage emails = new MailMessage("v4tech.project@gmail.com", email, "About Appointment Request", "Appointement has been fixed for your Date and Time");

                    try
                    {

                        smtpc.Send(emails);

                        lblemail.Text = "Message has been successfully sent";

                    }

                    catch (Exception ex)
                    {
                        lblemail.Text = "Could not send the e-mail - error: " + ex.Message;
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("Could not send the e-mail - error: " + ex.Message);
                }
            }



            if (e.CommandName == "Cancel")
            {
               /* Session["PatientName"] = GridView1.SelectedRow.Cells[2].Text;
                Session["Date"] = GridView1.SelectedRow.Cells[7].Text;
                Session["Time"] = GridView1.SelectedRow.Cells[8].Text;*/

                int rowIndex = Convert.ToInt32(e.CommandArgument); // Get the current row
                Session["PatientName"] = (GridView1.Rows[rowIndex].Cells[2].Text);
                Session["Date"] = (GridView1.Rows[rowIndex].Cells[7].Text);
                Session["Time"] = (GridView1.Rows[rowIndex].Cells[8].Text);
                try
                {


                    //Open the database connection
                    con.Open();

                    //Query to insert values to table

                    string query = "Update AppointmentInfo_tb set Confirmation='" + "Cancel" + "' where PatientName='" + Session["PatientName"].ToString() + "' and Date='" + Session["Date"].ToString() + "' and Time='" + Session["Time"] + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    int i = cmd.ExecuteNonQuery();

                    if (i == 1)
                    {
                        string sScript = "<script language='javascript'> alert('Cancelled Successfully'); window.location.href = 'ViewAppointmentDetails.aspx'; </script>";
                        ClientScript.RegisterStartupScript(typeof(Page), "alert", sScript);

                        //lblmsg.Text = "Document Upload Successfully";
                    }

                    else
                    {
                        string sScript = "<script language='javascript'> alert('Failed !Check the details'); window.location.href = 'ViewAppointmentDetails.aspx'; </script>";
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

                try
                {
                    string email = GridView1.Rows[rowIndex].Cells[6].Text;

                    SmtpClient smtpc = new SmtpClient("smtp.gmail.com");

                    smtpc.Port = 587;

                    smtpc.EnableSsl = true;

                    smtpc.UseDefaultCredentials = false;

                    smtpc.Credentials = new NetworkCredential("v4tech.project@gmail.com", "prasadv4tech");

                    MailMessage emails = new MailMessage("v4tech.project@gmail.com", email, "About Appointment Request", "Appointement has been Cancelled for your Date and Time");

                    try
                    {

                        smtpc.Send(emails);

                        lblemail.Text = "Message has been successfully sent";

                    }

                    catch (Exception ex)
                    {
                        lblemail.Text = "Could not send the e-mail - error: " + ex.Message;
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("Could not send the e-mail - error: " + ex.Message);
                }
            }
        }
    }
}