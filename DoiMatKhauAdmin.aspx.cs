using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace WebDongHo
{
    public partial class DoiMatKhauAdmin : System.Web.UI.Page
    {
        public DoiMatKhauAdmin()
        {
            InitializeCulture();
        }
        // string connStr;
        SqlConnection conn = new SqlConnection("Data Source = DESKTOP-GCISPPR\\SQLEXPRESS ; Initial Catalog = Watch ; Integrated Security = true");

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            //SqlDataAdapter adapter;
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from tblQuanTri Where username=N'" + txttendn.Text + "' And matkhau=N'" + txtmatkhaucu.Text + "'", conn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            
            
            if (txtmatkhaumoi.Text == txtgolaimatkhau.Text) 
            {
                SqlDataAdapter adapter1 = new SqlDataAdapter("Update tblQuanTri Set matkhau=N'" + txtmatkhaumoi.Text + "' Where username=N'" + txttendn.Text + "'And matkhau=N'" + txtmatkhaucu.Text + "'", conn);
                DataTable dt1 = new DataTable();
                adapter1.Fill(dt1);
                //Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Đổi mật khẩu thành công\")</SCRIPT>");
            }            
            else
            {
                //Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert(\"Mật khẩu cũ nhập sai\")</SCRIPT>");
                txttendn.Text = string.Empty;
                txtmatkhaucu.Text = string.Empty;
                txtmatkhaumoi.Text = string.Empty;
                txtgolaimatkhau.Text = string.Empty;
                txttendn.Focus();

            }

        }
    }
}
    