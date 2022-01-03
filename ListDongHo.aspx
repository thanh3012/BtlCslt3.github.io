<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="ListDongHo.aspx.cs" Inherits="WebDongHo.ListDongHo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            margin-right: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        tr,td 
        {
         border: 1px solid black;
        }
    </style> 
  <body>  <form id="form1">
    <div><h2> THẾ GIỚI ĐỒNG HỒ</h2>

    </div>

        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataKeyField="masp" DataSourceID="SqlDataSource_BTL" RepeatColumns ="4" RepeatDirection ="Horizontal">
            <ItemTemplate>
                Mã sản phẩm:
                <asp:Label ID="maspLabel" runat="server" Text='<%# Eval("masp") %>' />
                <br />
                Tên sản phẩm:
                <asp:Label ID="tenspLabel" runat="server" Text='<%# Eval("tensp") %>' />
                <br />
                Kiểu dáng:
                <asp:Label ID="kieudangLabel" runat="server" Text='<%# Eval("kieudang") %>' />
                <br />
                Thương hiệu:
                <asp:Label ID="thuonghieuLabel" runat="server" Text='<%# Eval("thuonghieu") %>' />
                <br />
                Kích thước:
                <asp:Label ID="kichthuocLabel" runat="server" Text='<%# Eval("kichthuoc") %>' />
                <br />
                Tính nagw:
                <asp:Label ID="tinhnangLabel" runat="server" Text='<%# Eval("tinhnang") %>' />
                <br />
                Loại dây:
                <asp:Label ID="loaidayLabel" runat="server" Text='<%# Eval("loaiday") %>' />
                <br />
                Giá:
                <asp:Label ID="giaLabel" runat="server" Text='<%# Eval("gia") %>' />
                <br />
                Xuất xứ:
                <asp:Label ID="xuatxuLabel" runat="server" Text='<%# Eval("xuatxu") %>' />
                <br />
                Hình ảnh:
                <asp:Image ID ="hinhanh" runat="server" ImageUrl='<%# "~/HinhAnh/DongHo/"+Eval("hinhanh") %>' Width="100" Height="180" />
            </ItemTemplate>
        </asp:DataList>
         <asp:SqlDataSource ID="SqlDataSource_BTL" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WatchConnectionString_BTL %>" DeleteCommand="DELETE FROM [tblWatch] WHERE [masp] = @original_masp AND [tensp] = @original_tensp AND [kieudang] = @original_kieudang AND [thuonghieu] = @original_thuonghieu AND [kichthuoc] = @original_kichthuoc AND [tinhnang] = @original_tinhnang AND [loaiday] = @original_loaiday AND [gia] = @original_gia AND [xuatxu] = @original_xuatxu AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))" InsertCommand="INSERT INTO [tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (@masp, @tensp, @kieudang, @thuonghieu, @kichthuoc, @tinhnang, @loaiday, @gia, @xuatxu, @hinhanh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblWatch]" UpdateCommand="UPDATE [tblWatch] SET [tensp] = @tensp, [kieudang] = @kieudang, [thuonghieu] = @thuonghieu, [kichthuoc] = @kichthuoc, [tinhnang] = @tinhnang, [loaiday] = @loaiday, [gia] = @gia, [xuatxu] = @xuatxu, [hinhanh] = @hinhanh WHERE [masp] = @original_masp AND [tensp] = @original_tensp AND [kieudang] = @original_kieudang AND [thuonghieu] = @original_thuonghieu AND [kichthuoc] = @original_kichthuoc AND [tinhnang] = @original_tinhnang AND [loaiday] = @original_loaiday AND [gia] = @original_gia AND [xuatxu] = @original_xuatxu AND (([hinhanh] = @original_hinhanh) OR ([hinhanh] IS NULL AND @original_hinhanh IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_masp" Type="String" />
                 <asp:Parameter Name="original_tensp" Type="String" />
                 <asp:Parameter Name="original_kieudang" Type="String" />
                 <asp:Parameter Name="original_thuonghieu" Type="String" />
                 <asp:Parameter Name="original_kichthuoc" Type="Int32" />
                 <asp:Parameter Name="original_tinhnang" Type="String" />
                 <asp:Parameter Name="original_loaiday" Type="String" />
                 <asp:Parameter Name="original_gia" Type="Decimal" />
                 <asp:Parameter Name="original_xuatxu" Type="String" />
                 <asp:Parameter Name="original_hinhanh" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="masp" Type="String" />
                 <asp:Parameter Name="tensp" Type="String" />
                 <asp:Parameter Name="kieudang" Type="String" />
                 <asp:Parameter Name="thuonghieu" Type="String" />
                 <asp:Parameter Name="kichthuoc" Type="Int32" />
                 <asp:Parameter Name="tinhnang" Type="String" />
                 <asp:Parameter Name="loaiday" Type="String" />
                 <asp:Parameter Name="gia" Type="Decimal" />
                 <asp:Parameter Name="xuatxu" Type="String" />
                 <asp:Parameter Name="hinhanh" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="tensp" Type="String" />
                 <asp:Parameter Name="kieudang" Type="String" />
                 <asp:Parameter Name="thuonghieu" Type="String" />
                 <asp:Parameter Name="kichthuoc" Type="Int32" />
                 <asp:Parameter Name="tinhnang" Type="String" />
                 <asp:Parameter Name="loaiday" Type="String" />
                 <asp:Parameter Name="gia" Type="Decimal" />
                 <asp:Parameter Name="xuatxu" Type="String" />
                 <asp:Parameter Name="hinhanh" Type="String" />
                 <asp:Parameter Name="original_masp" Type="String" />
                 <asp:Parameter Name="original_tensp" Type="String" />
                 <asp:Parameter Name="original_kieudang" Type="String" />
                 <asp:Parameter Name="original_thuonghieu" Type="String" />
                 <asp:Parameter Name="original_kichthuoc" Type="Int32" />
                 <asp:Parameter Name="original_tinhnang" Type="String" />
                 <asp:Parameter Name="original_loaiday" Type="String" />
                 <asp:Parameter Name="original_gia" Type="Decimal" />
                 <asp:Parameter Name="original_xuatxu" Type="String" />
                 <asp:Parameter Name="original_hinhanh" Type="String" />
             </UpdateParameters>
      </asp:SqlDataSource>
         <br />
           <a href="https://localhost:44378/ThemDH.aspx" >Thêm đồng hồ</a>
      
      </form>
  </body>
</asp:Content>
