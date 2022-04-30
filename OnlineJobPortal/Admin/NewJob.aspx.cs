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
            Session["title"] = "Add Job";

            if (!IsPostBack)
            {
                fillData();
            }
        }

        private void fillData()
        {
            if (Request.QueryString["id"] != null)
            {
                con = new SqlConnection(str);
                query = "Select * from Jobs where JobId= '" + Request.QueryString["id"] + "'";
                cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        txtJobTitle.Text = sdr["Title"].ToString();
                        txtNumberofPosts.Text = sdr["NoOfPost"].ToString();
                        txtDescription.Text = sdr["Description"].ToString();
                        txtQualification.Text = sdr["Qualification"].ToString();
                        txtExperience.Text = sdr["Experience"].ToString();
                        txtSpecialization.Text = sdr["Specialization"].ToString();
                        txtLastDatetoApply.Text = Convert.ToDateTime(sdr["LastDatetoApply"]).ToString("yyyy-MM-dd");
                        txtSalary.Text = sdr["Salary"].ToString();
                        ddlJobType.Text = sdr["JobType"].ToString();
                        txtCompanyName.Text = sdr["CompanyName"].ToString();
                        txtWebsite.Text = sdr["Website"].ToString();
                        txtEmail.Text = sdr["Email"].ToString();
                        txtAddress.Text = sdr["Address"].ToString();
                        ddlCountry.Text = sdr["Country"].ToString();
                        txtState.Text = sdr["State"].ToString();
                        btnAdd.Text = "Update";
                        linkBack.Visible = true;
                        Session["title"] = "Edit Job";

                    }
                }
                else
                {
                    lblMsg.Text = "Job Not Found...!";
                    lblMsg.CssClass = "alert alert-danger";

                }
                sdr.Close();
                con.Close();
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            try
            {
                string type, concatQuery, imagePath = String.Empty;
                bool isValidToExecute = false;
                con = new SqlConnection(str);
                if (Request.QueryString["id"] != null)
                {

                    if (fuCompanyLogo.HasFile)
                    {
                        if (Utils.IsValidExtension(fuCompanyLogo.FileName))
                        {
                            concatQuery = "CompanyImage=@CompanyImage,";
                        }
                        else
                        {
                            concatQuery = string.Empty;


                        }
                    }
                    else
                    {
                        concatQuery = string.Empty;

                    }
                    query = @"Update Jobs set Title=@Title,Description=@Description,Experience=@Experience," +
                            "Specialization=@Specialization,LastDatetoApply=@LastDatetoApply,Salary=@Salary,JobType=@JobType," +
                            "CompanyName=@CompanyName," + concatQuery + "Website=@Website,Email=@Email," +
                            "Address=@Address,Country=@Country,State=@State,Qualification=@Qualification,NoOfPost=@NoOfPost where JobId=@id";
                    type = "updated";
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
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@Country", ddlCountry.Text.Trim());
                    cmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
                    cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
                    cmd.Parameters.AddWithValue("@NoOfPost", txtNumberofPosts.Text.Trim());
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
                    if (fuCompanyLogo.HasFile)
                    {
                        if (Utils.IsValidExtension(fuCompanyLogo.FileName))
                        {
                            Guid obj = Guid.NewGuid();
                            imagePath = "Images/" + obj.ToString() + fuCompanyLogo.FileName;
                            fuCompanyLogo.PostedFile.SaveAs(Server.MapPath("~/Images/") + obj.ToString() +
                                                            fuCompanyLogo.FileName);
                            cmd.Parameters.AddWithValue("@CompanyImage", imagePath);
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
                        isValidToExecute = true;
                    }

                }
                else
                {
                    query = @"Insert into Jobs values(@Title,@Description,@Experience," +
                        "@Specialization,@LastDatetoApply,@Salary,@JobType,@CompanyName,@CompanyImage,@Website,@Email," +
                        "@Address,@Country,@State,@CreateDate,@Qualification,@NoOfPost)";
                    type = "saved";

                    DateTime time = DateTime.Now;
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
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@Country", ddlCountry.Text.Trim());
                    cmd.Parameters.AddWithValue("@State", txtState.Text.Trim());
                    cmd.Parameters.AddWithValue("@CreateDate", time.ToString("yyyy-MM-dd HH:mm:ss"));
                    cmd.Parameters.AddWithValue("@Qualification", txtQualification.Text.Trim());
                    cmd.Parameters.AddWithValue("@NoOfPost", txtNumberofPosts.Text.Trim());
                    if (fuCompanyLogo.HasFile)
                    {
                        if (Utils.IsValidExtension(fuCompanyLogo.FileName))
                        {
                            Guid obj = Guid.NewGuid();
                            imagePath = "Images/" + obj.ToString() + fuCompanyLogo.FileName;
                            fuCompanyLogo.PostedFile.SaveAs(Server.MapPath("~/Images/") + obj.ToString() +
                                                            fuCompanyLogo.FileName);
                            cmd.Parameters.AddWithValue("@CompanyImage", imagePath);
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


                }
                if (isValidToExecute)
                {
                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    if (res > 0)
                    {
                        lblMsg.Text = "Job " + type + " Successfully!";
                        lblMsg.CssClass = "alert alert-success";
                        Clear();
                    }
                    else
                    {
                        lblMsg.Text = "Cannot " + type + " the records, please try again after sometime..!";
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
            ddlCountry.ClearSelection();
        }

        //private bool Utils.IsValidExtension(string fileName)
        //{
        //    bool IsValid = false;
        //    string[] fileExtension = { ".jpg", "jpeg", ".png" };
        //    for (int i = 0; i <= fileExtension.Length - 1; i++)
        //    {
        //        if (fileName.Contains(fileExtension[i]))
        //        {
        //            IsValid = true;
        //            break;
        //        }
        //    }

        //    return IsValid;
        //}
    }



}