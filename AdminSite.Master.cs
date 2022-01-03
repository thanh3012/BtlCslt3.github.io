using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDongHo
{
    public partial class AdminSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                lblLoginCount.Text = Session["LoginCount"].ToString();
            if(Session["TrangThai"].ToString() == "IsLogout")
            {
                Response.Redirect("Login.aspx");
                
            }
            else
            {
                lblTaiKhoan.Text = Session["tendn"].ToString();
            }

            lblOnline.Text = Application["So_nguoi_online"].ToString();
        }

        protected void lblDangxuat_Click(object sender, EventArgs e)
        {
            Session["TrangThai"] = "IsLogout";
        }
    }
}