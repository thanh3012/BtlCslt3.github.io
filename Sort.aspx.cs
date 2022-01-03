using OfficeOpenXml.FormulaParsing.Excel.Functions.Information;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDongHo
{
    public partial class Sort : System.Web.UI.Page
    {
        List<SanPham> dsDongHo = new List<SanPham>();        
        string sort;

        public void Page_Load(object sender, EventArgs e)
        {
            //Lấy mã SP sau khi click vào Ảnh
            sort = (Request.QueryString["Sort"].ToString());

            //Lấy dữ liệu bằng DataReader
            string connStr;
            SqlConnection conn;
            connStr = "Data Source = DESKTOP-GCISPPR\\SQLEXPRESS ; Initial Catalog = Watch ; Integrated Security = true";
            conn = new SqlConnection(connStr);
            HasRows(conn);

            //Hiển thị
            //HienThiDuLieu(sort);
            if (sort == "ThapDenCao") 
            { bubblesortThapDenCao(); HienThiDuLieu(sort); }

            if (sort == "CaoDenThap")
            { bubblesortCaoDenThap(); HienThiDuLieu(sort); }        


        }
        
        public void HienThiDuLieu(string sort)
        {
            string dulieuHtml = "";           

            //hiển thị dữ liệu vào html
            //foreach (SanPham a in dsDongHo)            
            for (int i = 0; i <=dem ; i++)
            {
                
                string dongia = string.Format("{0:#,##0}", dsDongHo[thutu[i]].Gia);
                if (i <= dem)
                    dulieuHtml += "<div class='SanPham'>" +
                                       //"<center   id='" + dsDongHo[i].Masp.ToString().Trim() + "' onclick='myFunction" + i + "()'><img src='" + dsDongHo[i].Hinhanh + "' style='width: 50%'/img></center>" +
                                       "<center><a href = 'https://localhost:44378/Detail.aspx?Trang=" + dsDongHo[thutu[i]].Masp.Trim() + "' onclick = 'return myFunction" + i + "();'> <img src='" + dsDongHo[thutu[i]].Hinhanh + "' style='width: 50%'/img> </a></center>" +
                                          "<p> <center>" + dsDongHo[thutu[i]].Tensp + "</center> </p>" +
                                       "<h5 style='color: black; '> <center>" + dongia + " VND </center></h6>" +
                                "</div>";
            }
            //Format(new CultureInfo("vi-VN"), "{0:#,##0.00}", dsDongHo[i].Gia);
            //Format("{0:#,##0.00}", dsDongHo[i].Gia)           
            DanhSachDongHo.Text = dulieuHtml;
        }

        int dem = -1;
        double[] DaidienGia = new double[50];
        int[] thutu = new int[50];
        public void HasRows(SqlConnection connection)
        {
            using (connection)
            {
                
                //Lấy dữ liệu theo đk Mã SP (Where)
                //SqlCommand command = new SqlCommand("SELECT CategoryID, CategoryName FROM Categories;",connection);
                SqlCommand command = new SqlCommand("SELECT * FROM tblWatch", connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        dem++;
                        thutu[dem] = dem;
                        SanPham a = new SanPham();
                        a.Masp = reader["masp"].ToString();
                        a.Tensp = reader["tensp"].ToString();
                        a.Kieudang = reader["kieudang"].ToString();
                        a.Thuonghieu = reader["thuonghieu"].ToString();
                        a.Tinhnang = reader["tinhnang"].ToString();
                        a.Loaiday = reader["loaiday"].ToString();
                        a.Xuatxu = reader["xuatxu"].ToString();

                        a.Gia = double.Parse(reader["gia"].ToString());
                        DaidienGia[dem] = a.Gia;

                        a.Kichthuoc = double.Parse(reader["kichthuoc"].ToString());

                        //a.Hinhanh = "HinhAnh/DongHo/" + a.Masp.ToString().Trim() + ".jpg";
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

        
        public void HienThiPhanTrang(int chisotrang, int sophantu)
        {
            int soluongtrang = dsDongHo.Count / sophantu;
            if (dsDongHo.Count % sophantu > 0)
            { soluongtrang++; }

            string trangHTML = "";
            for (int i = 1; i <= soluongtrang; i++)
            {
                trangHTML += "[<a href='Sort.aspx?Trang=" + i + "'>" + i + "</a>]";
            }
            PhanTrang.Text = trangHTML;
        }


        void bubblesortThapDenCao()
        {
            for (int i = 0; i < dem; i++)
            {
                for (int j = dem; j > i; j--)
                    if (DaidienGia[j - 1] > DaidienGia[j])
                    {
                        double temp = DaidienGia[j - 1];
                        DaidienGia[j - 1] = DaidienGia[j];
                        DaidienGia[j] = temp;

                        int temp1 = thutu[j - 1];
                        thutu[j - 1] = thutu[j];
                        thutu[j] = temp1;
                    }
            }
        }


        void bubblesortCaoDenThap()
        {
            for (int i = 0; i < dem; i++)
            {
                for (int j = dem; j > i; j--)
                    if (DaidienGia[j - 1] < DaidienGia[j])
                    {
                        double temp = DaidienGia[j - 1];
                        DaidienGia[j - 1] = DaidienGia[j];
                        DaidienGia[j] = temp;

                        int temp1 = thutu[j - 1];
                        thutu[j - 1] = thutu[j];
                        thutu[j] = temp1;
                    }
            }
        }


    }
}