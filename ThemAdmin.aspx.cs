using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDongHo.Database;

namespace WebDongHo
{
    public partial class ThemAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadChucvu();
            }
        }
        private void LoadChucvu()
        {
            RunData run = new RunData();
            ddlchucvu.DataSource = run.GetData("Select * from tblChucVu");
            ddlchucvu.DataTextField = "chucvu";
            ddlchucvu.DataBind();
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string _manv = txtmanv.Text.Trim();
            string _tennv = txttennv.Text.Trim();
            string _tendn = txtusername.Text.Trim();
            string _matkhau = txtmatkhau.Text.Trim();
            string _chucvu = ddlchucvu.Text.Trim();
            string _sdt = txtsdt.Text.Trim();

            string strSQL = "INSERT[dbo].[tblQuanTri]" +
                "([manv],[tennv], [username], [matkhau], [chucvu],[sdt]) " +
                "VALUES(N'" + _manv + "',N'" + _tennv + "',N'" + _tendn + "', N'" + _matkhau + "', N'" + _chucvu + "', N'" + _sdt + "')";



            RunData run = new RunData();
            run.Execute(strSQL);
            Response.Redirect("DoiThongTin.aspx");
        }
    }
}