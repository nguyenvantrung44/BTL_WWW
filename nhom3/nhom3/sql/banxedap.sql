USE [nhom3]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FKtjdx5vft2ly8fscsbapcx584a]
GO
ALTER TABLE [dbo].[SanPham] DROP CONSTRAINT [FK6tkljmbht4nkw6t17rpa2mwk1]
GO
ALTER TABLE [dbo].[DonHang] DROP CONSTRAINT [FKks12nlyoi3sqgrff42be2u9wa]
GO
ALTER TABLE [dbo].[ChiTietDonHang] DROP CONSTRAINT [FKr5xd0qr7lfvx6celx57baxxwb]
GO
ALTER TABLE [dbo].[ChiTietDonHang] DROP CONSTRAINT [FKliuu6v788wxyhy31ybt0oly0k]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[SanPham]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[NhaCungCap]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[NguoiDung]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[DonHang]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[DanhMuc]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/31/2021 11:51:09 PM ******/
DROP TABLE [dbo].[ChiTietDonHang]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MADONHANG] [int] NOT NULL,
	[MASANPHAM] [int] NOT NULL,
	[donGia] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADONHANG] ASC,
	[MASANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[maDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[maDonHang] [int] IDENTITY(1,1) NOT NULL,
	[ngayLap] [datetime] NULL,
	[MAKHACHHANG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[maNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[LoaiNguoiDung] [varchar](255) NULL,
	[matKhau] [varchar](255) NULL,
	[ngaySinh] [datetime] NULL,
	[soCMND] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](255) NULL,
	[tenNguoiDung] [nvarchar](255) NULL,
	[trangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[tenNhaCungCap] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/31/2021 11:51:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [int] IDENTITY(1,1) NOT NULL,
	[donGia] [float] NOT NULL,
	[donViTinh] [nvarchar](255) NOT NULL,
	[moTa] [nvarchar](255) NOT NULL,
	[ngaySanXuat] [datetime] NULL,
	[soLuongNhap] [int] NOT NULL,
	[tenSanPham] [nvarchar](255) NOT NULL,
	[trangThai] [varchar](255) NULL,
	[urlHinh] [varchar](255) NULL,
	[MADANHMUC] [int] NULL,
	[MANHACUNGCAP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1, 61, 12300000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1, 62, 9700000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (2, 61, 12300000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (2, 71, 13590000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (3, 61, 24600000, 2)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (4, 61, 12300000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (5, 61, 12300000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (6, 81, 36000000, 3)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (7, 61, 12300000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (8, 61, 12300000, 1)
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (1, N'Xe Đạp Điện Honda')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (2, N'Xe Đạp Điện Yamaha')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (3, N'Xe Đạp Điện DK Bike')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (4, N'Xe Đạp Điện Hitasa')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (5, N'Xe Đạp Điện HkBike')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1, CAST(N'2021-05-30 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (2, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 23)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (3, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 23)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (4, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 23)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (5, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (6, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (7, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (8, CAST(N'2021-05-31 00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (3, N'Khanh Hoa', N'trung@gmail.com', N'USER', N'$2a$10$EvsExRj4jpF2kv9xCWwnyOTJkR.KFsbD6lFDiOf350dfgv4ff/5Lq', CAST(N'1999-04-04 00:00:00.000' AS DateTime), N'225765551', N'0911982091', N'Phat La', N'true')
INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (7, N'Ho Chi Minh', N'duyen@gmail.com', N'ADMIN', N'$2a$10$xKbCd2nSuBFBbz17zKze0ecSCx.UjbCeo8gVLX7R2mOO4GSEFzedi', CAST(N'1999-04-04 00:00:00.000' AS DateTime), N'225765550', N'0911982090', N'Duyen', N'true')
INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (23, N'Ha Noi', N'locphuho@gmail.com', N'ADMIN', N'$2a$10$yrSlpIOopC5MEPxVCZlysu96cYiwfttAvqi.b9NlCwBUB0iTCVSY2', CAST(N'1999-04-04 00:00:00.000' AS DateTime), N'522789456', N'0911982457', N'Trung Nguyen', N'true')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (1, N'Số 2, Ngõ 2 Nguyễn Hoàng, Nam Từ Liêm, Hà Nội', N'Công ty TNHH Minh Hoàng - Michi Bike ')
INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (2, N'317 Quang Trung, Phường 10 , Quận Gò Vấp, TP Hồ Chí Minh ', N'CÔNG TY TNHH TMDV THẾ GIỚI XE CHẠY ĐIỆN')
INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (3, N'466 Đường Nguyễn Duy Trinh, Phường Bình Trưng Tây, Quận 2, Thành phố Hồ Chí Minh', N'Công Ty TNHH Xe Điện BLUERA Việt Nhật')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (61, 12300000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 107, N'Honda Xe Lu', N'true', N'../resources/images/h1.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (62, 9700000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa IM18', N'true', N'../resources/images/h2.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (63, 10000000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa N18', N'true', N'../resources/images/h3.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (64, 9500000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa N22', N'true', N'../resources/images/h4.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (65, 9500000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa M22 INOX', N'true', N'../resources/images/h5.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (66, 10000000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa INOX C.22', N'true', N'../resources/images/h6.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (67, 11000000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa MINPIN', N'true', N'../resources/images/h7.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (68, 9500000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa I 18', N'true', N'../resources/images/h8.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (69, 10500000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Hitasa ATEMENI', N'true', N'../resources/images/h9.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (70, 9000000, N'Chiếc', N'Xe Đạp Điện Hitasa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N' Hitasa MIN-8', N'true', N'../resources/images/h10.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (71, 13590000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Honda M8', N'true', N'../resources/images/hd1.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (72, 11500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A6 Plus', N'true', N'../resources/images/hd2.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (73, 13000000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A7 Plus', N'true', N'../resources/images/hd3.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (74, 14000000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A8 Plus', N'true', N'../resources/images/hd4.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (75, 12500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda M6', N'true', N'../resources/images/hd5.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (76, 11500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A6', N'true', N'../resources/images/hd6.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (77, 13500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A8', N'true', N'../resources/images/hd7.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (78, 10000000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A3', N'true', N'../resources/images/hd8.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (79, 9500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda A1', N'true', N'../resources/images/hd9.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (80, 13500000, N'Chiếc', N'Xe Đạp Điện HonDa chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Honda M7', N'true', N'../resources/images/hd10.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (81, 12000000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 97, N'YAMAHA ICATS H4', N'true', N'../resources/images/y1.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (82, 12500000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Yamaha Icats Hx F2', N'true', N'../resources/images/y2.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (83, 11500000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA ICATS H3', N'true', N'../resources/images/y3.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (84, 12000000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA HX F1', N'true', N'../resources/images/y4.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (85, 12500000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Yamaha Cute Girl F', N'true', N'../resources/images/y5.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (86, 12000000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA CUTE GIRL F3', N'true', N'../resources/images/y6.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (87, 11500000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Yamaha Cute Girl F2', N'true', N'../resources/images/y7.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (88, 10000000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA METIS - X', N'true', N'../resources/images/y8.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (89, 9500000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA CUTE GIRL', N'true', N'../resources/images/y9.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (90, 9600000, N'Chiếc', N'Xe Đạp Điện YAMAHA chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'YAMAHA ICATS H6', N'true', N'../resources/images/y10.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (91, 13990000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Dkbike Samurai 2', N'true', N'../resources/images/dk1.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (92, 10900000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dkbike M133', N'true', N'../resources/images/dk2.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (93, 12990000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'DKbike Sparta', N'true', N'../resources/images/dk3.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (94, 10300000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Poke Dkbike', N'true', N'../resources/images/dk4.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (95, 11800000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dkbike Zipp', N'true', N'../resources/images/dk5.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (96, 11200000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dkbike Miku Max', N'true', N'../resources/images/dky6.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (97, 13900000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dk Tron', N'true', N'../resources/images/dk7.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (98, 11000000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dkbike 18A Plus', N'true', N'../resources/images/dk8.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (99, 12990000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'Dkbike Samurai', N'true', N'../resources/images/dk9.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (100, 9690000, N'Chiếc', N'Xe Đạp Điện DK Bike chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 10, N'DKbike Emmy', N'true', N'../resources/images/dk10.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (101, 8900000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Zinger Color', N'true', N'../resources/images/hk1.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (102, 12900000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'ITrend Hkbike', N'true', N'../resources/images/hk2.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (103, 16900000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Xmen Plus2', N'true', N'../resources/images/hk3.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (104, 10500000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Zinger Color 2', N'true', N'../resources/images/hk4.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (105, 13500000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Zinger Color', N'true', N'../resources/images/hk5.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (106, 13500000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Crazybull', N'true', N'../resources/images/hk6.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (107, 12500000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Cap A2', N'true', N'../resources/images/hk7.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (108, 15900000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Maxxer', N'true', N'../resources/images/hk8.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (109, 10900000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Cap A', N'true', N'../resources/images/hk9.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (110, 14800000, N'Chiếc', N'Xe Đạp Điện HK BIKE chính hãng giá tốt', CAST(N'2019-12-12 00:00:00.000' AS DateTime), 100, N'Hkbike Top Class', N'true', N'../resources/images/hk10.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (111, 14000000, N'Chiếc', N'Xe Đạp Điện Trẻ Trung, Hiện Đại', CAST(N'2021-05-20 00:00:00.000' AS DateTime), 100, N'Xe Lu', N'true', N'../resources/images/633905zoom.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FKliuu6v788wxyhy31ybt0oly0k] FOREIGN KEY([MADONHANG])
REFERENCES [dbo].[DonHang] ([maDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FKliuu6v788wxyhy31ybt0oly0k]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FKr5xd0qr7lfvx6celx57baxxwb] FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FKr5xd0qr7lfvx6celx57baxxwb]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FKks12nlyoi3sqgrff42be2u9wa] FOREIGN KEY([MAKHACHHANG])
REFERENCES [dbo].[NguoiDung] ([maNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FKks12nlyoi3sqgrff42be2u9wa]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK6tkljmbht4nkw6t17rpa2mwk1] FOREIGN KEY([MADANHMUC])
REFERENCES [dbo].[DanhMuc] ([maDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK6tkljmbht4nkw6t17rpa2mwk1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FKtjdx5vft2ly8fscsbapcx584a] FOREIGN KEY([MANHACUNGCAP])
REFERENCES [dbo].[NhaCungCap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FKtjdx5vft2ly8fscsbapcx584a]
GO
