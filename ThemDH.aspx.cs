using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDongHo.Database;

namespace WebDongHo
{
    public partial class ThemDH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string _masp = txtmasp.Text.Trim();
            string _tensp = txttensp.Text.Trim();
            string _kieudang = txtkieudang.Text.Trim();
            string _thuonghieu = txtthuonghieu.Text.Trim();
            string _kichthuoc = txtkichthuoc.Text.Trim();
            string _tinhnang = txttinhnang.Text.Trim();
            string _loaiday = txtloaiday.Text.Trim();
            double _gia = double.Parse(txtgia.Text);
            string _xuatxu = txtxuatxu.Text.Trim();
            string _hinhanh = "";


            if (Page.IsValid && FileUpload1.HasFile)
            {
                string fileName = "HinhAnh/DongHo/" + FileUpload1.FileName;
                string filePath = MapPath(fileName);                
                FileUpload1.SaveAs(filePath);               
                hinhanh.ImageUrl = fileName;
            }

             _hinhanh = FileUpload1.FileName;

            //string _hinhanh = txthinhanh.Text.Trim();

            string strSQL = "INSERT[dbo].[tblWatch]" +
                "([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) " +
                "VALUES(N'"+_masp+"',N'"+_tensp+"', N'"+_kieudang+"', N'"+_thuonghieu+"', "+_kichthuoc+", N'"+_tinhnang+"', N'"+_loaiday+"', "+_gia+" , N'"+_xuatxu+"', '"+_hinhanh+"')";



            RunData run = new RunData();
            run.Execute(strSQL);
            Response.Redirect("SuaDH.aspx");
        }
        
        
    }
}