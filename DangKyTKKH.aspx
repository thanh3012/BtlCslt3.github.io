<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyTKKH.aspx.cs" Inherits="WebDongHo.DangKyTKKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
         <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            background-color: #0099FF;
            margin-left: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 124px;
        }
        .auto-style3 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style4 {
            width: 139px;
        }
        .auto-style5 {
            width: 473px;
        }
        .auto-style6 {
            width: 473px;
            height: 49px;
        }
        .auto-style7 {
            width: 139px;
            height: 49px;
        }
        .auto-style8 {
            height: 49px;
        }
    </style>
    </title>
    <style type="text/css">
        .auto-style3 {
            width: 107px;
        }
        .auto-style5 {
            width: 897px;
        }
        .auto-style6 {
            width: 686px;
            text-align: center;
        }
        .auto-style7 {
            width: 402px;
        }
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            width: 251px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6" colspan="3"><strong><span class="auto-style8">ĐĂNG KÝ TÀI KHOẢN</span><br />
                        </strong></td>
                </tr>
                <
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Tên đăng nhập(*)</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txttendn" runat="server" Width="201px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Tên đăng nhập  không được bỏ trống" ControlToValidate="txtmatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style3">Mật khẩu(*)</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ControlToValidate="txtmatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
              
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Ngày sinh</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtngaysinh" runat="server" TextMode="Date" Width="194px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Ngày sinh không được bỏ trống" ControlToValidate="txtngaysinh" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
              
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">Giới tính</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlgioitinh" runat="server">
                            <asp:ListItem>Nam</asp:ListItem>
                            <asp:ListItem>Nữ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    
                </tr>
              
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style3">Email</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtemail" runat="server" TextMode="Email" Width="198px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email không được bỏ trống" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnDangKy" runat="server" Height="33px" OnClick="btnDangKy_Click" Text="Đăng ký" Width="158px" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
