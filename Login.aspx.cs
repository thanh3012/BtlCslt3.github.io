using System;
using System.Data;
using WebDongHo.Database;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace WebDongHo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(CheckLogin(txttendn.Text.Trim(), txtmatkhau.Text.Trim()))
            {
                Session["TrangThai"] = "IsLogin";
                Session["tendn"] = txttendn.Text.Trim();
                Response.Redirect("ListDongHo.aspx");
            }
            else
            {
                Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Tên đăng nhập hoặc mật khẩu không đúng\")</SCRIPT>");
                txttendn.Text = string.Empty;
                txtmatkhau.Text = string.Empty;
                txttendn.Focus();
            }
        }
        private bool CheckLogin(string username, string password)
        {
            RunData run = new RunData();
            DataTable dt = new DataTable();

            string strSQL ="SELECT * fROM tblQuanTri WHERE username=N'" + username +
                "' AND matkhau=N'" +password+"'";
            dt = run.GetData(strSQL);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else return false;
        }
    }
}