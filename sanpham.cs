using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDongHo
{
    public class SanPham
    {
        #region Bien thanh vien
        string masp, tensp, kieudang, thuonghieu, tinhnang;
        string loaiday, xuatxu;
        string hinhanh;
        double gia, kichthuoc;
        #endregion

        #region Thuoc tinh
        public string Tensp { get => tensp; set => tensp = value; }
        public string Masp { get => masp; set => masp = value; }
        public string Kieudang { get => kieudang; set => kieudang = value; }
        public string Thuonghieu { get => thuonghieu; set => thuonghieu = value; }
        public string Tinhnang { get => tinhnang; set => tinhnang = value; }
        public string Loaiday { get => loaiday; set => loaiday = value; }
        public string Xuatxu { get => xuatxu; set => xuatxu = value; }
        public string Hinhanh { get => hinhanh; set => hinhanh = value; }
        public double Gia { get => gia; set => gia = value; }
        public double Kichthuoc { get => kichthuoc; set => kichthuoc = value; }
        #endregion


        #region Ham khoi tao
        public SanPham() { }
        public SanPham(string masp, string tensp, string kieudang, string thuonghieu, string tinhnang, string loaiday, string xuatxu, string hinhanh, double gia, double kichthuoc)
        {
            this.masp = masp;
            this.tensp = tensp;
            this.kieudang = kieudang;
            this.thuonghieu = thuonghieu;
            this.tinhnang = tinhnang;
            this.loaiday = loaiday;
            this.xuatxu = xuatxu;
            this.hinhanh = hinhanh;
            this.gia = gia;
            this.kichthuoc = kichthuoc;
        }            
        #endregion



        #region Ham huy
        ~SanPham()
        {
            GC.SuppressFinalize(this);
        }
        #endregion

        #region Ham tu dinh nghia
        #endregion

    }
}