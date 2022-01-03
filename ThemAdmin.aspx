<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="ThemAdmin.aspx.cs" Inherits="WebDongHo.ThemAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            color: #FFFFFF;
            background-color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" >
    <table style="width:100%;">
        <tr>
            <td colspan="2">
                <h2 class="text-center"><strong>Thêm tài khoản quản trị</strong></h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Mã nhân viên</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtmanv" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Họ và tên</td>
            <td>
                <asp:TextBox ID="txttennv" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Tên đăng nhập</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td>
                <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Width="253px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Chức vụ</td>
            <td>
                <asp:DropDownList ID="ddlchucvu" runat="server" Height="19px" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtsdt" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnLuu" runat="server" Height="33px" OnClick="btnLuu_Click" Text="Lưu" Width="79px" CssClass="auto-style2" />
            </td>
        </tr>
    </table>
</form>
</asp:Content>
