<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="DoiThongTin.aspx.cs" Inherits="WebDongHo.DoiThongTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h2 class="text-center"><strong>Thay đổi thông tin</strong></h2>
    <asp:GridView ID="grvThayDoi" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="grvThayDoi_RowCancelingEdit" OnRowDataBound="grvThayDoi_RowDataBound" OnRowDeleting="grvThayDoi_RowDeleting" OnRowEditing="grvThayDoi_RowEditing" OnRowUpdating="grvThayDoi_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="manv">
        <Columns>
            <asp:TemplateField HeaderText="Mã sản phẩm">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("manv") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="tennv" HeaderText="Họ tên" />
            <asp:BoundField DataField="username" HeaderText="Tên đăng nhập" />
            <asp:TemplateField HeaderText="Chức vụ">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlchucvu" runat="server">
                        <asp:ListItem>Quản trị viên</asp:ListItem>
                        <asp:ListItem>Kế toán</asp:ListItem>
                        <asp:ListItem>Nhân viên CSKH</asp:ListItem>
                        <asp:ListItem>Bảo trì Web</asp:ListItem>
                        <asp:ListItem>Trưởng phòng</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("chucvu") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" />
            <asp:CommandField HeaderText="Chức năng" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ThemAdmin.aspx">Thêm mới</asp:LinkButton>
</p>
</asp:Content>
