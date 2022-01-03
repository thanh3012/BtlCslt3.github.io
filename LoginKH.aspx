<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginKH.aspx.cs" Inherits="WebDongHo.LoginKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            width: 306px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <table class="auto-style2">
                <tr>
                    <td class="auto-style2" colspan="3"><strong><span class="auto-style1">ĐĂNG NHẬP </span> <br />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4"><p>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-person-fill" viewBox="0 0 16 16">
                    <path d="M12 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm-1 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0zm-3 4c2.623 0 4.146.826 5 1.755V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1v-1.245C3.854 11.825 5.377 11 8 11z"></path>
                    </svg>Tên đăng nhập(*)</p></td>
                    <td>
                        <asp:TextBox ID="txttendn" runat="server" Width="201px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống" ControlToValidate="txttendn" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style7"><p class="auto-style3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
                    <path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"></path>
                    <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                    </svg>Mật khẩu(*)</p></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password" Width="198px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ControlToValidate="txtmatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnDangNhap" runat="server" CssClass="auto-style4" Height="33px" OnClick="btnDangNhap_Click" Text="Đăng nhập" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
