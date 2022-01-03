using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebDongHo.Database;
namespace WebDongHo
{
    public partial class DoiThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TrangThai"].ToString() == "IsLogout")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    LoadThaydoi();
                }
            }
        }
        private void LoadThaydoi()
        {
            RunData run = new RunData();
            string strSQL = "SELECT * From tblQuanTri";
            grvThayDoi.DataSource = run.GetData(strSQL);
            grvThayDoi.DataBind();

        }

        protected void grvThayDoi_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvThayDoi.EditIndex = -1;
            LoadThaydoi();
        }

        protected void grvThayDoi_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvThayDoi.EditIndex = e.NewEditIndex;
            LoadThaydoi();
        }

        protected void grvThayDoi_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string _manv = grvThayDoi.DataKeys[e.RowIndex].Value.ToString().Trim();
            string _tennv = ((TextBox)grvThayDoi.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string _tendn = ((TextBox)grvThayDoi.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string _chucvu = ((DropDownList)grvThayDoi.Rows[e.RowIndex].FindControl("ddlchucvu")).SelectedValue;
            string _sdt = ((TextBox)grvThayDoi.Rows[e.RowIndex].Cells[4].Controls[0]).Text;

            string strSQL = "Update tblQuanTri set tennv=N'" + _tennv + "',username=N'" + _tendn + "',chucvu=N'" + _chucvu + "',sdt=N'" + _sdt
                + "'Where manv=N'" + _manv + "'";

            RunData run = new RunData();
            run.Execute(strSQL);

            grvThayDoi.EditIndex = -1;
            LoadThaydoi();

        }

        protected void grvThayDoi_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string _manv = grvThayDoi.DataKeys[e.RowIndex].Value.ToString().Trim();
            string strSQL = "Delete from tblQuanTri Where manv=N'" + _manv + "'";

            RunData run = new RunData();
            run.Execute(strSQL);
            LoadThaydoi();
        }

        protected void grvThayDoi_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.DataRow && grvThayDoi.EditIndex == -1)
            {
                ((LinkButton)e.Row.Cells[5].Controls[2]).OnClientClick = 
                    "return confirm('Bạn có chắc xóa không?')";

            }
        }
    }
}