using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using WebDongHo.Database;
using System.Web.UI.WebControls;

namespace WebDongHo
{
    public partial class SuaDH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["TrangThai"].ToString() == "IsLogout")
            {
                Response.Redirect("Login.aspx");
            }

            else
            {
                lblLoginCount.Text = Session["LoginCount"].ToString();
                if (!IsPostBack)
                {
                    LoadDieuKhien();
                }
            }

        }
        private void LoadDieuKhien()
        {
            RunData run = new RunData();
            string strSQL = "SELECT * From tblWatch";
            grvSuaDH.DataSource = run.GetData(strSQL);
            grvSuaDH.DataBind();
        }

        

        protected void grvDieuKhien_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvSuaDH.EditIndex = -1;
            LoadDieuKhien();
        }

        protected void grvDieuKhien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string _masp = grvSuaDH.DataKeys[e.RowIndex].Value.ToString().Trim();
            string strSQL = "Delete FROM tblWatch WHERE masp=N'" + _masp + "'";

            RunData run = new RunData();
            run.Execute(strSQL);
            LoadDieuKhien();
        }

        protected void grvDieuKhien_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow && grvSuaDH.EditIndex == -1)
            {
                ((LinkButton)e.Row.Cells[10].Controls[2]).OnClientClick =
                    "return confirm('Bạn có chắc chắc xóa không?')";
            }
        }

        protected void grvDieuKhien_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvSuaDH.EditIndex = e.NewEditIndex;
            LoadDieuKhien();
        }

        protected void grvDieuKhien_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string _masp = grvSuaDH.DataKeys[e.RowIndex].Value.ToString().Trim();

            string _tensp = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _kieudang = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string _thuonghieu = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string _kichthuoc = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string _tinhnang = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string _loaiday = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string _gia = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
            string _xuatxu = ((TextBox)grvSuaDH.Rows[e.RowIndex].Cells[8].Controls[0]).Text;


            string strSQL = "Update tblWatch SET tensp=N'" + _tensp + "',kieudang=N'" + _kieudang + "', thuonghieu=N'" + _thuonghieu + "',kichthuoc=N'"
                + _kichthuoc + "',tinhnang=N'" + _tinhnang + "',loaiday=N'" + _loaiday + "',gia=N'" + _gia + "',xuatxu=N'" + _xuatxu
                + "'WHERE masp=N'" + _masp + "'";

            RunData run = new RunData();
            run.Execute(strSQL);

            grvSuaDH.EditIndex = -1;
            LoadDieuKhien();
        }

        protected void grvSuaDH_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}