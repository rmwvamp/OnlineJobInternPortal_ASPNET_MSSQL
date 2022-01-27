    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortal.User
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]!=null)
            {
                lbRegisterorProfile.Text = "Profile";
                lbLoginorLogout.Text = "Logout";
            }
            else
            {
                lbRegisterorProfile.Text = "Register";
                lbLoginorLogout.Text = "Login";
            }

        }

        protected void lbRegisterorProfile_OnClick(object sender, EventArgs e)
        {
            if (lbRegisterorProfile.Text=="Profile")
            {
               Response.Redirect("Profile.aspx"); 
            }
            else
            {
                Response.Redirect("Regiser.aspx");
            }
            
            throw new NotImplementedException();
        }

        protected void lbLoginorLogout_OnClick(object sender, EventArgs e)
        {
            if (lbRegisterorProfile.Text=="Login")
            {
                Response.Redirect("Login.aspx"); 
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Regiser.aspx");
            }

            throw new NotImplementedException();
        }
    }
}