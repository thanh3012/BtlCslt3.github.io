<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="DoiMatKhauAdmin.aspx.cs" Inherits="WebDongHo.DoiMatKhauAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: medium;
            height: 40px;
            background-color: #FFFFFF;
            width: 130px;
        }
        .auto-style7 {
        font-size: medium;
        height: 40px;
        background-color: #FFFFFF;
        width: 184px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1">
        <div style="text-align: center">
            <div style="text-align: center">
            <br style="font-size: xx-large" />
            </div>
            <table style="width:100%;">
                <tr>
                    <td colspan="2" style="width: 863px; text-align: center; background-color: #FFFFCC;" class="auto-style5">
                        Đổi mật khẩu</td>
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: left">Tên đăng nhập</td>
                    <td class="auto-style2" style="text-align: left">
                        <asp:TextBox ID="txttendn" runat="server" Width="214px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: left"><p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
                    <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"></path>
                    <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                    </svg>Mật khẩu cũ(*)</p></td>
                    <td class="auto-style2" style="text-align: left">
                        <asp:TextBox ID="txtmatkhaucu" runat="server" Width="220px" TextMode="Password" CssClass="auto-style4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmatkhaucu" ErrorMessage="Mật khẩu không được để trống" ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: left"><p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
                    <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"></path>
                    <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                    </svg>Mật khẩu mới(*)</p></td>
                    <td class="auto-style5" style="text-align: left">
                        <asp:TextBox ID="txtmatkhaumoi" runat="server" Width="220px" TextMode="Password" CssClass="auto-style4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmatkhaumoi" ErrorMessage="Mật khẩu mới không được để trống" ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>
                        <br class="auto-style4" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style7" style="text-align: left"><p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
                    <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"></path>
                    <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                    </svg>Gõ lại mật khẩu mới(*)</p></td>
                    <td class="auto-style5" style="text-align: left">
                        <asp:TextBox ID="txtgolaimatkhau" runat="server" Width="220px" TextMode="Password" CssClass="auto-style4"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtgolaimatkhau" ErrorMessage="Gõ lại mật khẩu không được để trống" ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>
                        <br class="auto-style4" />
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style5" style="text-align: left">
                        <asp:Button ID="btnLuu" runat="server" CssClass="auto-style6" Height="31px" Text="Lưu" Width="65px" OnClick="btnLuu_Click" style="color: #FFFFFF; background-color: #0099FF" />
                        <span class="auto-style4">&nbsp;
                        </span>
                        </td>
                    
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
