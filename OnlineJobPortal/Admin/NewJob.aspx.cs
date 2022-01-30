using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.Admin
{
    public partial class NewJob : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../User/Login.aspx");
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            try
            {
                string concatQuery, imagePath = String.Empty;
                bool isValidToExecute = false;
                con = new SqlConnection(str);
                //if (fuCompanyLogo.HasFile)
                //{
                //    if (IsValidExtension(fuCompanyLogo.FileName))
                //    {
                //        concatQuery = "";
                //    }
                //    else
                //    {

                //    }
                //}
                //else
                //{

                //}

                query = @"Insert into Jobs values(@Title,@Description,@Experience," +
                        "@Specialization,@LastDatetoApply,@Salary,@JobType,@CompanyName,@CompanyImage,@Website,@Email," +
                        "@Address,@Country,@State,@CreateDate,@Qualification,@NoOfPost)";

                //DateTime time = DateTime.Now;
                string time1 = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Title", txtJobTitle.Text.Trim());
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@Experience", txtExperience.Text.Trim());
                cmd.Parameters.AddWithValue("@Specialization", txtSpecialization.Text.Trim());
                cmd.Parameters.AddWithValue("@LastDatetoApply", txtLastDatetoApply.Text.Trim());
                cmd.Parameters.AddWithValue("@Salary", txtSalary.Text.Trim());
                cmd.Parameters.AddWithValue("@JobType", ddlJobType.Text.Trim());
                cmd.Parameters.AddWithValue("@CompanyName", txtCompanyName.Text.Trim());
                cmd.Parameters.AddWithValue("@Website", txtWebsite.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtWebsite.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", ddlCountry.Text.Trim());
                cmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
                cmd.Parameters.AddWithValue("@CreateDate", time1);
                cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
                cmd.Parameters.AddWithValue("@NoOfPost", txtNumberofPosts.Text.Trim());
                if (fuCompanyLogo.HasFile)
                {
                    if (IsValidExtension(fuCompanyLogo.FileName))
                    {
                        Guid obj = Guid.NewGuid();
                        imagePath = "Images/" + obj.ToString() + fuCompanyLogo.FileName;
                        fuCompanyLogo.PostedFile.SaveAs(Server.MapPath("~/Images/") + obj.ToString() +
                                                        fuCompanyLogo.FileName);
                        //cmd.Parameters.AddWithValue("@CompanyImage", fuCompanyLogo.Text.Trim());
                        isValidToExecute = true;

                    }
                    else
                    {
                        lblMsg.Text = "Please upload .jpg, .jpeg .png files for Logo";
                        lblMsg.CssClass = "alert alert-danger";
                    }
                }
                else
                {
                    cmd.Parameters.AddWithValue("@CompanyImage", imagePath);
                    isValidToExecute = true;
                }

                if (isValidToExecute)
                {
                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        lblMsg.Text = "Job saved Successfully!";
                        lblMsg.CssClass = "alert alert-success";
                        Clear();
                    }
                    else
                    {
                        lblMsg.Text = "Cannot saved the records, please try again after sometime..!";
                        lblMsg.CssClass = "alert alert-success";
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            finally
            {
                con.Close();

            }

        }

        private void Clear()
        {
            txtJobTitle.Text = string.Empty;
            txtNumberofPosts.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtQualification.Text = string.Empty;
            txtExperience.Text = string.Empty;
            txtSpecialization.Text = string.Empty;
            txtLastDatetoApply.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtCompanyName.Text = string.Empty;
            txtWebsite.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtState.Text = string.Empty;
            ddlJobType.ClearSelection();
            ;
            ddlCountry.ClearSelection();
        }

        private bool IsValidExtension(string fileName)
        {
            bool IsValid = false;
            string[] fileExtension = { ".jpg", "jpeg", ".png" };
           for (int i = 0; i <= fileExtension.Length - 1; i++)
            {
                if (fileName.Contains(fileExtension[i]))
                {
                    IsValid = true;
                    break;
                }
            }

            return IsValid;
        }
    }



}