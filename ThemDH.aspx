<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="ThemDH.aspx.cs" Inherits="WebDongHo.ThemDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 106px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #0099FF;
        }
        .auto-style4 {
            width: 106px;
            height: 56px;
        }
        .auto-style5 {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="2" class="auto-style2">Thêm mới dữ liệu<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mã sản phẩm</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtmasp" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Tên sản phẩm</td>
                    <td>
                        <asp:TextBox ID="txttensp" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Kiểu dáng</td>
                    <td>
                        <asp:TextBox ID="txtkieudang" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Thương hiệu</td>
                    <td>
                        <asp:TextBox ID="txtthuonghieu" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Kích thước</td>
                    <td>
                        <asp:TextBox ID="txtkichthuoc" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Tính năng</td>
                    <td>
                        <asp:TextBox ID="txttinhnang" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Loại dây</td>
                    <td>
                        <asp:TextBox ID="txtloaiday" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Giá</td>
                    <td>
                        <asp:TextBox ID="txtgia" runat="server" Width="232px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Xuất xứ</td>
                    <td>
                        <asp:TextBox ID="txtxuatxu" runat="server" Width="232px" Height="25px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Hình ảnh</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="348px" Height="27px" />
                    &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" Display="None" ErrorMessage="Bạn cần chọn một tệp ảnh trước khi ấn nút &quot;Upload&quot;"></asp:RequiredFieldValidator>                    
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <asp:Image ID="hinhanh" runat="server" Width="150px" />
                       
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLuu" runat="server" CssClass="auto-style3" Height="32px" OnClick="btnLuu_Click" Text="Lưu" Width="70px" />
                                                
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:LinkButton ID="lbnQuaylai" runat="server" PostBackUrl="~/ListDongHo.aspx">&gt;&gt;Quay lại</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    
                </tr>
            </table>
        </div>
    </form>
</asp:Content>
