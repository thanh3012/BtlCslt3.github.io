using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDongHo
{
    public partial class Detail : System.Web.UI.Page
    {
        SanPham dsDongHo = new SanPham();
        string MaSP;
        public void Page_Load(object sender, EventArgs e)
        {
            //Lấy mã SP sau khi click vào Ảnh
            if (Request.QueryString["Trang"].ToString() == null) MaSP = "#";
            else MaSP = (Request.QueryString["Trang"].ToString());

            //Lấy dữ liệu bằng DataReader
            string connStr;
            SqlConnection conn;
            connStr = "Data Source = DESKTOP-GCISPPR\\SQLEXPRESS ; Initial Catalog = Watch ; Integrated Security = true";
            conn = new SqlConnection(connStr);
            HasRows(conn, MaSP);

            //Hiển thị
            HienThiDuLieu(MaSP);
        }


        public void HienThiDuLieu(string MaSP)
        {
            string dulieuHtml = "";
            string dongia = string.Format("{0:#,##0}", dsDongHo.Gia);

            //hiển thị dữ liệu vào html
            dulieuHtml += "<div class='SanPham'>" +
                               //"<center   id='" + dsDongHo[i].Masp.ToString().Trim() + "' onclick='myFunction" + i + "()'><img src='" + dsDongHo[i].Hinhanh + "' style='width: 50%'/img></center>" +
                               "<center> <img src='" + dsDongHo.Hinhanh + "' style='width: 50%'/img> </a></center>" +
                                  "<p> <center>" + dsDongHo.Tensp + "</center> </p>" +
                               "<h5 style='color: black; '> <center>" + dongia + " VND </center></h6>" +
                        "</div>";
            dulieuHtml += "<center>" +
                            "<table id='customers'>" +
                                "<tr><td>Mã sản phẩm</td>" +
                                    "<td> " + dsDongHo.Masp + "</td></tr>" +
                                "<tr><td>Tên sản phẩm</td>" +
                                    "<td> " + dsDongHo.Tensp + "</td></tr>" +
                                "<tr><td>Kiểu Dáng</td>" +
                                    "<td>" + dsDongHo.Kieudang + "</td></tr>" +
                                "<tr><td>Thương Hiệu</td>" +
                                    "<td> " + dsDongHo.Thuonghieu + "</td></tr>" +
                                "<tr><td>Tính Năng</td>" +
                                    "<td> " + dsDongHo.Tinhnang + "</td></tr>" +
                                "<tr><td>Loại dây</td>" +
                                    "<td>" + dsDongHo.Loaiday + "</td></tr>" +
                                "<tr><td>Xuất xứ</td>" +
                                    "<td>" + dsDongHo.Xuatxu + "</td></tr>" +
                                "<tr><td>Kích Thước</td>" +
                                    "<td> " + dsDongHo.Kichthuoc + "</td></tr>" +
                            "</table></center>";

            DanhSachDongHo.Text = dulieuHtml;
        }

        public void HasRows(SqlConnection connection, string MaSP)
        {
            using (connection)
            {
                //Lấy dữ liệu theo đk Mã SP (Where)
                //SqlCommand command = new SqlCommand("SELECT CategoryID, CategoryName FROM Categories;",connection);
                SqlCommand command = new SqlCommand("SELECT * FROM tblWatch Where masp='" + MaSP + "'", connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
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

                        //Response.Write("Name: " + name);
                        //Response.Write("City: " + city);

                        //a = new SanPham(a.Masp, a.Tensp, a.Kieudang, a.Thuonghieu, a.Tinhnang, a.Loaiday, a.Xuatxu, "HinhAnh/DongHo/" + "PAM00305" + ".jpg", a.Gia, a.Kichthuoc);
                        a = new SanPham(a.Masp, a.Tensp, a.Kieudang, a.Thuonghieu, a.Tinhnang, a.Loaiday, a.Xuatxu, a.Hinhanh, a.Gia, a.Kichthuoc);
                        dsDongHo = a;
                    }
                }
                reader.Close();
            }
        }
    }
}