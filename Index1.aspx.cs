using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDongHo.Database;

namespace WebDongHo
{
    public partial class Index1 : System.Web.UI.Page
    {
        List<SanPham> dsDongHo = new List<SanPham>();

        public void Page_Load(object sender, EventArgs e)
        {
            int chisotrang;
            //Laydulieu();            
            //Lấy dữ liệu bằng DataReader
            string connStr;
            SqlConnection conn;
            connStr = "Data Source = DESKTOP-GCISPPR\\SQLEXPRESS ; Initial Catalog = Watch ; Integrated Security = true";
            conn = new SqlConnection(connStr);
            HasRows(conn);

            //Chi so trang
            if (Request.QueryString["Trang"] == null) chisotrang = 1;
            else chisotrang = int.Parse(Request.QueryString["Trang"].ToString());
            HienThiDuLieu(chisotrang, 6);
            HienThiPhanTrang(chisotrang, 6);
            //int chisotrang = int.Parse(Request.QueryString["Trang"].ToString());       
        }


        public void HienThiDuLieu(int chisotrang, int sophantu)
        {
            string dulieuHtml = "";
            int x = sophantu * chisotrang - sophantu;
            int y = x + (sophantu - 1);
            if (y > dem) y = dem;
            
            //foreach (SanPham a in dsDongHo)            
            for (int i = x; i <= y; i++)
            {
                string dongia = string.Format("{0:#,##0}", dsDongHo[i].Gia);
                if (i <= dem)
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

        public void HienThiPhanTrang(int chisotrang, int sophantu)
        {
            int soluongtrang = dsDongHo.Count / sophantu;
            if (dsDongHo.Count % sophantu > 0)
            { soluongtrang++; }

            string trangHTML = "";
            for (int i = 1; i <= soluongtrang; i++)
            {
                trangHTML += "[<a href='Index1.aspx?Trang=" + i + "'>" + i + "</a>]";
            }
            PhanTrang.Text = trangHTML;
        }

        int dem = -1;
        public void HasRows(SqlConnection connection)
        {
            using (connection)
            {
                //SqlCommand command = new SqlCommand("SELECT CategoryID, CategoryName FROM Categories;",connection);
                SqlCommand command = new SqlCommand("SELECT * FROM tblWatch", connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        SanPham a = new SanPham();
                        dem++;
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
                        

                        //Response.Write("Name: " + name);
                        //Response.Write("City: " + city);

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