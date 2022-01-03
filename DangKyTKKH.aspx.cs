using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDongHo.Database;

namespace WebDongHo
{
    public partial class DangKyTKKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string _tendn = txttendn.Text.Trim();
            string _matkhau = txtmatkhau.Text.Trim();
            string _ngaysinh = txtngaysinh.Text.Trim();
            string _gioitinh = ddlgioitinh.SelectedValue;
            string _email = txtemail.Text.Trim();
           

            string strSQL = "INSERT[dbo].[tblKhachHang]" +
                "([tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) " +
                "VALUES(N'" + _tendn + "',N'" + _matkhau + "', N'" + _ngaysinh + "', N'" + _gioitinh + "',N'" + _email + "')";

            RunData run = new RunData();
            run.Execute(strSQL);
            Response.Redirect("LoginKH.aspx");
        }
    }
}