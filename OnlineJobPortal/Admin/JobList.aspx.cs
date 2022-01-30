using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.Admin
{
    public partial class JobList : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        DataTable dt;

        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        string query;

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["admin"]==null)
            {
                Response.Redirect("../User/Login.aspx");
            }

            if (!IsPostBack)
            {
                ShowJob();
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowJob();
        }

        private void ShowJob()
        {
             query = string.Empty;
            con=new SqlConnection(str);
            query = @"Select Row_Number() over(Order by (Select 1)) as [Sr.No], JobId,Title,NoOfPost,Description,Qualification,Experience,
                        LastDatetoApply,CompanyName,Country,State,CreateDate from Jobs";
            cmd=new SqlCommand(query,con);
            SqlDataAdapter sda=new SqlDataAdapter(cmd);
            dt=new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //throw new NotImplementedException();
        }

        protected void GridView1_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}