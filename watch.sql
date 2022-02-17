USE [Watch]
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 9/18/2021 8:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[macv] [nvarchar](15) NOT NULL,
	[chucvu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblChucVu] PRIMARY KEY CLUSTERED 
(
	[macv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 9/18/2021 8:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[tendn] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[ngaysinh] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblKhachHang_1] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuanTri]    Script Date: 9/18/2021 8:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuanTri](
	[manv] [nchar](15) NOT NULL,
	[tennv] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NOT NULL,
	[chucvu] [nvarchar](100) NOT NULL,
	[sdt] [nchar](15) NULL,
 CONSTRAINT [PK_tblQuanTri] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWatch]    Script Date: 9/18/2021 8:59:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWatch](
	[masp] [nchar](15) NOT NULL,
	[tensp] [nvarchar](100) NOT NULL,
	[kieudang] [nvarchar](50) NOT NULL,
	[thuonghieu] [nvarchar](50) NOT NULL,
	[kichthuoc] [int] NOT NULL,
	[tinhnang] [nvarchar](100) NOT NULL,
	[loaiday] [nvarchar](50) NOT NULL,
	[gia] [money] NOT NULL,
	[xuatxu] [nvarchar](50) NOT NULL,
	[hinhanh] [nvarchar](500) NULL,
 CONSTRAINT [PK_Nháp] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblChucVu] ([macv], [chucvu]) VALUES (N'BTW', N'Bảo trì Web')
INSERT [dbo].[tblChucVu] ([macv], [chucvu]) VALUES (N'CSKH', N'Nhân viên CSKH ')
INSERT [dbo].[tblChucVu] ([macv], [chucvu]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[tblChucVu] ([macv], [chucvu]) VALUES (N'QTV', N'Quản trị viên')
INSERT [dbo].[tblChucVu] ([macv], [chucvu]) VALUES (N'TP', N'Trưởng phòng')
GO
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (1, N'An Ngô', N'qwertyuiop', N'23/03/1975', N'Nam', N'Anngo@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (2, N'Bích Phương', N'2483835484', N'12/06/1997', N'Nữ', N'Bichphuong@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (3, N'Mai Anh', N'6665328', N'30/10/1992', N'Nữ', N'Maianh@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (4, N'Minh Chiến', N'asdfghjkl', N'18/09/1998', N'Nam', N'Minhchien@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (5, N'Minh Ngọc', N'666666', N'26/02/1999', N'Nữ', N'Minhngoc@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (6, N'Mạnh Toàn', N'ahihihihi', N'05/12/2002', N'Nam', N'Manhtoan@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (7, N'Như Hoài', N'abc123', N'14/03/2000', N'Nữ', N'Nhuhoai@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (8, N'Phạm Thủy', N'zxcvbnm', N'09/09/2000', N'Nữ', N'Phamthuy@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (9, N'Sơn Nguyễn', N'56895734', N'23/01/1998', N'Nam', N'Sonnguyen@gmail.com')
INSERT [dbo].[tblKhachHang] ([makh], [tendn], [matkhau], [ngaysinh], [gioitinh], [Email]) VALUES (10, N'Trần Huy', N'666888', N'28/02/1995', N'Nam', N'Tranhuy@gmail.com')
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
GO
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'DK48335        ', N'Hoàng Quốc Huy', N'HuyHoang', N'1234', N'Bảo trì Web', N'123456789      ')
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'HJ853477534    ', N'Nguyễn Vân Ánh', N'VanAnh', N'3456', N'Nhân viên CSKH', N'135792468      ')
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'LQ564853       ', N'Phạm Thủy Tiên', N'ThuyTien', N'5678', N'Nhân viên CSKH', N'987654321      ')
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'QTV7545        ', N'Trần Minh Đức', N'DucTran', N'78910', N'Quản trị viên', N'012345678      ')
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'TL38457348     ', N'Đỗ Trang Hạ', N'TrangHa', N'123abc', N'Kế Toán', N'876543210      ')
INSERT [dbo].[tblQuanTri] ([manv], [tennv], [username], [matkhau], [chucvu], [sdt]) VALUES (N'TP354          ', N'Nguyễn Văn An ', N'NguyenAn', N'def', N'Trưởng phòng', N'246813579      ')
GO
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'035319WW00     ', N'CLIPPER QUARTZ PM ', N'Đồng hồ Nữ', N'HERMES', 29, N'Đồng hồ ', N'Kim Loại', 91698750.0000, N'Pháp', N'035319WW00.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'APS5           ', N'Apple Watch S5', N'Đồng hồ Nam', N'Apple', 35, N'Smartwatch', N'silicone', 11000000.0000, N'Mỹ', N'APS5.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'APS6           ', N'Apple Watch S6', N'Đồng hồ Nam', N'Apple', 35, N'Smartwatch', N'Thép', 17000000.0000, N'Mỹ', N'APS6.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'CP 109419-5401 ', N'L’HEURE DU DIAMANT', N'Đồng hồ Nữ', N'CHOPARD', 35, N'Đồng hồ Cơ', N'Vàng', 2251301130.0000, N'Thụy Sỹ', N'CP 109419-5401.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'CP3534         ', N'MILLE MIGLIA AUTOMATIC', N'Đồng hồ Nam', N'CHOPARD', 39, N'Đồng hồ Cơ', N'Kim Loại', 131648400.0000, N'Thụy Sỹ', N'CP3534.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'CT57645        ', N'CLÉ DE CARTIER ', N'Đồng hồ Nữ', N'CARTIER ', 35, N'Đồng hồ Cơ', N'Đính kim cương', 3745170000.0000, N'Pháp', N'CT57645.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'CT6445         ', N'RONDE DE CARTIER W2RN0005', N'Đồng hồ Nam', N'CARTIER', 42, N'Đồng hồ Cơ', N'Da', 132329340.0000, N'Pháp', N'CT644.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'GC03545        ', N'G-TIMELESS WATCH', N'Đồng hồ Nữ', N'GUCCI', 29, N'Đồng hồ Cơ', N'Mạ vàng', 31355880.0000, N'Italia', N'GC03545.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'GF4645         ', N'Garmin Fenix 6S Pro Solar', N'Đồng hồ Nam', N'Garmin', 42, N'Smartwatch', N'silicone', 21490000.0000, N'Thụy Sỹ', N'GF4645.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'GF785R         ', N'Fenix 6 dây silicone', N'Đồng hồ Nam', N'Garmin', 47, N'Smartwatch', N'silicone', 22490000.0000, N'Thụy Sỹ', N'GF785R.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'HL46456        ', N'hublot-classic-fusion-fuente', N'Đồng hồ Nam', N'Hublot', 45, N'Đồng hồ Cơ', N'Da', 492000000.0000, N'Thụy Sỹ', N'HL46456.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'J12 H2012      ', N'MENS AUTOMATIC CERAMIC ', N'Đồng hồ Nam', N'CHANEL ', 42, N'Đồng hồ cơ', N'Kim Loại', 168552050.0000, N'Pháp', N'J12 H2012.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'LG03332        ', N'LONGINES PRÉSENCE', N'Đồng hồ đôi', N'LONGINES ', 30, N'Đồng hồ Cơ', N'Da', 52547000.0000, N'Thụy Sỹ ', N'LG03332.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'MCK24655       ', N'NULLDARCI PAVÉ', N'Đồng hồ Nữ', N'MICHAEL KORS', 33, N'Máy pin - điện tử', N'Kim loại', 10115100.0000, N'Mỹ', N'MCK24655.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'MCK6632        ', N'MINDY ROSE GOLD-TONE ', N'Đồng hồ Nữ', N'MICHAEL KORS', 36, N'Máy pin - điện tử', N'Mạ vàng', 6724800.0000, N'Mỹ', N'MCK6632.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'MVD574         ', N'MUSEUM MEN''S', N'Đồng hồ đôi', N'MOVADO', 38, N'Máy pin - điện tử', N'Da', 11248840.0000, N'Mỹ', N'MVD574.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'OGV24421       ', N'OG385-022DGSK-T', N'Đồng hồ đôi', N'OGIVAL', 28, N'máy Quartz', N'Kim Loại', 20301500.0000, N'Thụy Sỹ', N'OGV24421.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'OR0b05e00b     ', N'orient-re-av0b05e00b', N'Đồng hồ Nam', N'Orient', 41, N'Đồng hồ cơ', N'da', 22201500.0000, N'Nhật Bản', N'.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'PAM00305       ', N'LUMINOR SUBMERSIBLE 1950 3 DAYS', N'Đồng hồ Nam', N'PANERAI ', 47, N'Đồng hồ Cơ', N'Da', 203021000.0000, N'Italia', N'PAM00305.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'PAM00317       ', N'LUMINOR 1950 8 DAYS GMT', N'Đồng hồ Nam', N'PANERAI ', 44, N'Đồng hồ Cơ', N'Da', 474451250.0000, N'Italia', N'PAM00317.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'TS5636         ', N'T-GOLD GLAMOROUS', N'Đồng hồ Nữ', N'TISSOT', 27, N'Máy pin - điện tử', N'Da', 87575500.0000, N'Thụy Sỹ', N'TS5636.jpg')
INSERT [dbo].[tblWatch] ([masp], [tensp], [kieudang], [thuonghieu], [kichthuoc], [tinhnang], [loaiday], [gia], [xuatxu], [hinhanh]) VALUES (N'VSC574K        ', N'V-METAL', N'Đồng hồ Nam', N'VERSACE ', 40, N'Đồng hồ Cơ', N'Mạ vàng ', 44354120.0000, N'Italia', N'VSC574K.jpg')
GO
