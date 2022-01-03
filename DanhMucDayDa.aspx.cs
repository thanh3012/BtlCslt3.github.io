using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDongHo
{
    public partial class DanhMucDayDa : System.Web.UI.Page
    {
        List<SanPham> dsDongHo = new List<SanPham>();
        public void Page_Load(object sender, EventArgs e)
        {
            //Lấy dữ liệu bằng DataReader
            string connStr;
            SqlConnection conn;
            connStr = "Data Source = DESKTOP-GCISPPR\\SQLEXPRESS ; Initial Catalog = Watch ; Integrated Security = true";
            conn = new SqlConnection(connStr);
            HasRows(conn);

            //Hiển thị
            HienThiDuLieu();
        }

        public void HienThiDuLieu()
        {
            string dulieuHtml = "";

            for (int i = 0; i <= dem; i++)
            //foreach (SanPham a in dsDongHo)                        
            {
                string dongia = string.Format("{0:#,##0}", dsDongHo[i].Gia);
                dulieuHtml += "<div class='SanPham'>" +
                                    //"<center   id='" + dsDongHo[i].Masp.ToString().Trim() + "' onclick='myFunction" + i + "()'><img src='" + dsDongHo[i].Hinhanh + "' style='width: 50%'/img></center>" +
                                    "<center><a href = 'https://localhost:44378/Detail.aspx?Trang=" + dsDongHo[i].Masp.Trim() + "' onclick = 'return myFunction" + i + "();'> <img src='" + dsDongHo[i].Hinhanh + "' style='width: 50%'/img> </a></center>" +
                                        "<p> <center>" + dsDongHo[i].Tensp + "</center> </p>" +
                                    "<h5 style='color: black; '> <center>" + dongia + " VND </center></h6>" +
                            "</div>";
            }

            //Format(new CultureInfo("vi-VN"), "{0:#,##0.00}", dsDongHo[i].Gia);
            //Format("{0:#,##0.00}", dsDongHo[i].Gia)           
            DanhSachDongHo.Text = dulieuHtml;
        }

        int dem = -1;
        public void HasRows(SqlConnection connection)
        {
            using (connection)
            {
                //Lấy dữ liệu theo từ khóa tìm kiếm
                //SqlCommand command = new SqlCommand("SELECT CategoryID, CategoryName FROM Categories;",connection);
                SqlCommand command = new SqlCommand("SELECT * FROM tblWatch WHERE loaiday LIKE '%da%';", connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        dem++;
                        SanPham a = new SanPham();
                        a.Masp = reader["masp"].ToString();
                        a.Tensp = reader["tensp"].ToString();
                        a.Kieudang = reader["kieudang"].ToString();
                        a.Thuonghieu = reader["thuonghieu"].ToString();
                        a.Tinhnang = reader["tinhnang"].ToString();
                        a.Loaiday = reader["loaiday"].ToString();
                        a.Xuatxu = reader["xuatxu"].ToString();
                        a.Gia = double.Parse(reader["gia"].ToString());
                        a.Kichthuoc = double.Parse(reader["kichthuoc"].ToString());

                        a.Hinhanh = reader["hinhanh"].ToString().Trim();
                        a.Hinhanh = "HinhAnh/DongHo/" + a.Hinhanh.ToString().Trim();


                        //a = new SanPham(a.Masp, a.Tensp, a.Kieudang, a.Thuonghieu, a.Tinhnang, a.Loaiday, a.Xuatxu, "HinhAnh/DongHo/" + "PAM00305" + ".jpg", a.Gia, a.Kichthuoc);
                        a = new SanPham(a.Masp, a.Tensp, a.Kieudang, a.Thuonghieu, a.Tinhnang, a.Loaiday, a.Xuatxu, a.Hinhanh, a.Gia, a.Kichthuoc);
                        dsDongHo.Add(a);
                    }
                }
                reader.Close();
            }
        }

    }
}
  