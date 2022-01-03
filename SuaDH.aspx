<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="SuaDH.aspx.cs" Inherits="WebDongHo.SuaDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .auto-style4 {
        font-size: medium;
    }
    .auto-style5 {
        font-size: large;
    }
    .auto-style6 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1">
        <div>
            <div class="auto-style6">
            <span class="auto-style4">
                <br />
                </span><span class="auto-style1">
            <br />
            </span>
            <span class="auto-style5">Số lượt truy câp:</span><asp:Label ID="lblLoginCount" runat="server" Text="0" CssClass="auto-style5" style="font-size: large; color: #FF0000"></asp:Label>
                <span class="auto-style1">
                <br />
            </span>
            <br />
            </div>
        <asp:GridView ID="grvSuaDH" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="masp" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="grvDieuKhien_RowCancelingEdit" OnRowDeleting="grvDieuKhien_RowDeleting" OnRowEditing="grvDieuKhien_RowEditing" OnRowUpdating="grvDieuKhien_RowUpdating" OnRowDataBound="grvDieuKhien_RowDataBound1" Width="821px" OnSelectedIndexChanged="grvSuaDH_SelectedIndexChanged" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Mã sản phẩm">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("masp") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" />
                    <asp:BoundField DataField="kieudang" HeaderText="Kiểu dáng" />
                    <asp:BoundField DataField="thuonghieu" HeaderText="Thương hiệu" />
                    <asp:BoundField DataField="kichthuoc" HeaderText="Kích thước" />
                    <asp:BoundField DataField="tinhnang" HeaderText="Tính năng" />
                    <asp:BoundField DataField="loaiday" HeaderText="Loại dây" />
                    <asp:BoundField DataField="gia" HeaderText="Giá" />
                    <asp:BoundField DataField="xuatxu" HeaderText="Xuất xứ" />
                    <asp:TemplateField HeaderText="Hình ảnh">
                        <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="102px" ImageUrl='<%# "~/HinhAnh/DongHo/"+Eval("hinhanh") %>' Width="102px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Chức năng" InsertText="" NewText="" SelectText="" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Cập nhật" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
        </div>
    </form>
</asp:Content>
