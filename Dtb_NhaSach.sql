USE [master]
GO
/****** Object:  Database [Dtb_NhaSach]    Script Date: 12/8/2020 7:52:04 PM ******/
CREATE DATABASE [Dtb_NhaSach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dtb_NhaSach', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dtb_NhaSach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dtb_NhaSach_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dtb_NhaSach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dtb_NhaSach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dtb_NhaSach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dtb_NhaSach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dtb_NhaSach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dtb_NhaSach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dtb_NhaSach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dtb_NhaSach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET RECOVERY FULL 
GO
ALTER DATABASE [Dtb_NhaSach] SET  MULTI_USER 
GO
ALTER DATABASE [Dtb_NhaSach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dtb_NhaSach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dtb_NhaSach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dtb_NhaSach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dtb_NhaSach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dtb_NhaSach] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dtb_NhaSach', N'ON'
GO
ALTER DATABASE [Dtb_NhaSach] SET QUERY_STORE = OFF
GO
USE [Dtb_NhaSach]
GO
/****** Object:  User [thu3]    Script Date: 12/8/2020 7:52:05 PM ******/
CREATE USER [thu3] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaSach] [nchar](10) NOT NULL,
	[SoHD] [int] NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[ThanhTien] [float] NOT NULL,
	[GiamGia] [float] NULL,
	[GiaSauGiam] [float] NOT NULL,
	[DonGia] [float] NOT NULL,
 CONSTRAINT [PK_CHITIETHOADON] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[SoHD] [int] NOT NULL,
	[MaNV] [nchar](10) NULL,
	[NgayBan] [datetime] NULL,
	[TenKh] [nvarchar](50) NULL,
	[MaTv] [int] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nchar](20) NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[MaNXB] [nchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [nchar](20) NULL,
 CONSTRAINT [PK_NXB] PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[Stt] [int] NOT NULL,
	[MaSach] [nchar](10) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaTL] [nchar](10) NOT NULL,
	[MaNXB] [nchar](10) NOT NULL,
	[MaTG] [nchar](10) NOT NULL,
	[GiaBan] [int] NOT NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTG] [nchar](10) NOT NULL,
	[TenTG] [nvarchar](50) NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TaiKhoan] [nchar](10) NOT NULL,
	[MatKhau] [nchar](20) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHVIEN]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHVIEN](
	[MaTv] [int] NOT NULL,
	[TenTv] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[Sdt] [nchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DiemTichLuy] [int] NOT NULL,
 CONSTRAINT [PK_THANHVIEN] PRIMARY KEY CLUSTERED 
(
	[MaTv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTL] [nchar](30) NOT NULL,
	[TenTL] [nvarchar](50) NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MaTL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'BACNP22   ', 100014, 10, 600000, 50, 300000, 60000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'BIL35     ', 100013, 2, 60000, 10, 54000, 30000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'CCHN21    ', 100013, 3, 150000, 50, 75000, 50000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'CDKLCN05  ', 100002, 1, 20000, 10, 18000, 20000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'CDKLCN05  ', 100012, 10, 700000, 30, 490000, 70000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'CDKLCN05  ', 100014, 10, 700000, 50, 350000, 70000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'DL30      ', 100012, 10, 490000, 30, 343000, 49000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'HIR31     ', 100003, 1, 50000, 0, 50000, 50000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'iKVTBTC20 ', 100004, 1, 50000, 5, 47500, 50000)
INSERT [dbo].[CHITIETHOADON] ([MaSach], [SoHD], [SoLuongBan], [ThanhTien], [GiamGia], [GiaSauGiam], [DonGia]) VALUES (N'NPTHHD34  ', 100011, 3, 90000, 10, 81000, 30000)
GO
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100002, N'1         ', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'Hisoka', 3, 18000)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100003, N'2         ', CAST(N'2020-12-02T00:00:00.000' AS DateTime), N'Qi', 2, 50000)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100004, N'2         ', CAST(N'2020-12-03T00:00:00.000' AS DateTime), N'Hari', 3, 47500)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100011, N'2         ', CAST(N'2020-12-01T22:53:52.513' AS DateTime), N'Quynh', 0, 81000)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100012, N'1         ', CAST(N'2020-12-01T22:54:52.683' AS DateTime), N'pa', 0, 833000)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100013, N'2         ', CAST(N'2020-12-01T23:14:50.997' AS DateTime), N'ha', 0, 129000)
INSERT [dbo].[HOADON] ([SoHD], [MaNV], [NgayBan], [TenKh], [MaTv], [TongTien]) VALUES (100014, N'2         ', CAST(N'2020-12-01T23:27:48.407' AS DateTime), N'test', 0, 650000)
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgSinh], [DiaChi], [SDT], [Luong]) VALUES (N'1         ', N'Hải', CAST(N'2000-10-27' AS Date), N'Ben Tre', N'0968951201          ', 3000000)
INSERT [dbo].[NHANVIEN] ([MaNV], [TenNV], [NgSinh], [DiaChi], [SDT], [Luong]) VALUES (N'2         ', N'Quỳnh', CAST(N'1995-02-28' AS Date), N'Đà Lạt', N'0908776424          ', 3000000)
GO
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'C2010     ', N'Nhà Xuất Bản Cengage', N'Quận 1', N'0909876421          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'CTQG2010  ', N'Nhà Xuất Bản Chính Trị Quốc Gia Sự Thật', N'Quận 2', N'0908765212          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'DHQGHN2010', N'Nhà Xuất Bản Đại Học Quốc Gia Hà Nội', N'Quận 5', N'0907264124          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'DT2010    ', N'Nhà Xuất Bản Dân Trí', N'Quận Thủ Đức', N'0906452625          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'GDVN2010  ', N'Nhà Xuất Bản Giáo Dục Việt Nam', N'Quận Tân Bình', N'0905294722          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'HD2010    ', N'Nhà Xuất Bản Hồng Đức', N'Quận Bình Tân', N'0904382145          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'HN2010    ', N'Nhà Xuất Bản Hà Nội', N'Quận Bình Thạnh', N'0903249863          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'HNV2010   ', N'Nhà Xuất Bản Hội Nhà Văn', N'Quận 3', N'0902483924          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'KD2010    ', N'Nhà Xuất Bản Kim Đồng', N'Quận 4', N'0909248729          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'KHXH2010  ', N'Nhà Xuất Bản Khoa Học Xã Hội', N'Quận 6', N'0908372785          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'KT2010    ', N'Nhà Xuất Bản Kinh Tế HCM', N'Quận 8', N'0927498274          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'LD2010    ', N'Nhà Xuất Bản Lao động', N'Quận 7', N'0937498242          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'PN2010    ', N'Nhà Xuất Bản Phụ Nữ', N'Quận 9', N'0947284952          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'T2010     ', N'Nhà Xuất Bản Trẻ', N'Quận Tân Phú', N'0948239842          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'TG2010    ', N'Nhà Xuất Bản Thế Giới', N'Bình Chánh', N'0923858272          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'TH2010    ', N'Nhà Xuất Bản Tổng Hợp TP.HCM', N'Đồng Nai', N'0982764892          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'TN2010    ', N'Nhà Xuất Bản Thanh Niên', N'Bình Dương', N'0988772389          ')
INSERT [dbo].[NXB] ([MaNXB], [TenNXB], [DiaChi], [DienThoai]) VALUES (N'TT2010    ', N'Nhà Xuất Bản Tri Thức', N'Quận 5', N'0906274902          ')
GO
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (1, N'BACNP22   ', N'Bí Ẩn Của Não Phải', 10, N'PTTT1020  ', N'TH2010    ', N'GSMS21    ', 60000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (2, N'BCCM02    ', N'Becoming - Chất Michelle', 10, N'HK1020    ', N'TH2010    ', N'MO02      ', 55000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (3, N'BIL35     ', N'Basic Ielts  Listening', 60, N'SNN1020   ', N'TH2010    ', N'LYB31     ', 30000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (4, N'BLTTHS06  ', N'Bộ Luật Tố Tụng Hình Sự (Hiện Hành)', 30, N'CT1020    ', N'CTQG2010  ', N'QH06      ', 40000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (5, N'BMOCBBN23 ', N'Ba Mẹ Ơi Con Bị Bắt Nạt', 50, N'PTTT1020  ', N'TG2010    ', N'BC22      ', 40000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (6, N'CCHN21    ', N'Cùng Con Học Nói', 19, N'PTTT1020  ', N'PN2010    ', N'TSSW20    ', 50000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (7, N'CDKLCN05  ', N'Cuộc Đời Kỳ Lạ Của Nikola Tesla', 10, N'HK1020    ', N'KT2010    ', N'NT05      ', 70000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (8, N'CDTDTC13  ', N'Con Đường Tự Do Tài Chính', 70, N'KT1020    ', N'TG2010    ', N'BS12      ', 30000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (9, N'CLDR25    ', N'Wow! Con Làm Được Rồi', 48, N'PTTT1020  ', N'PN2010    ', N'PC24      ', 25000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (10, N'CLGVCD14  ', N'Chiến Lược Gọi Vốn Cộng Đồng', 30, N'KT1020    ', N'TG2010    ', N'JS13      ', 65000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (11, N'CN29      ', N'Công Nghệ', 100, N'SGK1020   ', N'GDVN2010  ', N'BGDVDT26  ', 95000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (12, N'CNBCT19   ', N'Cú Ngoặt Bóng Của Tôi', 90, N'NTGT1020  ', N'T2010     ', N'JC18      ', 78000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (13, N'CTGM16    ', N'Chạm Tới Giấc Mơ', 85, N'NTGT1020  ', N'HN2010    ', N'STMTP15   ', 45000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (14, N'DL30      ', N'Địa Lý', 120, N'SGK1020   ', N'GDVN2010  ', N'BGDVDT26  ', 49000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (15, N'HIR31     ', N'Hackers Ielts: Reading', 99, N'SNN1020   ', N'TG2010    ', N'VNNH27    ', 50000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (16, N'HPVNQCTK10', N'Hiến Pháp Việt Nam Qua Các Thời Kỳ', 50, N'CT1020    ', N'CTQG2010  ', N'QH06      ', 30000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (17, N'iKVTBTC20 ', N'iKON - Vươn Tới Bầu Trời Cao', 69, N'NTGT1020  ', N'DT2010    ', N'NiM19     ', 20000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (18, N'KHTHTK01  ', N'Khi Hơi Thở Hóa Thinh Không', 50, N'HK1020    ', N'LD2010    ', N'PK01      ', 10000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (19, N'KTHVM11   ', N'Kinh Tế Học Vi Mô', 100, N'KT1020    ', N'C2010     ', N'NGM10     ', 60000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (20, N'KTTH4.012 ', N'Kinh Tế Tuần Hoàn 4.0', 200, N'KT1020    ', N'TG2010    ', N'NDD11     ', 58000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (21, N'MLNM04    ', N'Một Lít Nước Mắt', 50, N'HK1020    ', N'HNV2010   ', N'KA04      ', 39000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (22, N'MSNHKN18  ', N'Meryl Streep - Nữ Hoàng Không Ngai', 50, N'NTGT1020  ', N'TG2010    ', N'MS17      ', 40000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (23, N'NPTHHD34  ', N'Ngữ Pháp Tiếng Hàn Hiện Đại', 10, N'SNN1020   ', N'DT2010    ', N'NGT30     ', 30000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (24, N'NPTNCB32  ', N'Ngữ Pháp Tiếng Nhật Căn Bản', 20, N'SNN1020   ', N'PN2010    ', N'ES28      ', 50000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (25, N'NV926     ', N'Ngữ Văn 9', 30, N'SGK1020   ', N'GDVN2010  ', N'NKP25     ', 90000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (26, N'QVTCT09   ', N'Quân Vương - Thuật Cai Trị', 100, N'CT1020    ', N'TG2010    ', N'NM09      ', 112000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (27, N'SAUCTH08  ', N'Sự An Ủi Của Triết Học', 150, N'CT1020    ', N'TG2010    ', N'ADB08     ', 110000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (28, N'TDCXCB24  ', N'Từ Điển Cảm Xúc Cho Bé', 40, N'PTTT1020  ', N'KD2010    ', N'C23       ', 94000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (29, N'TDHV39    ', N'Từ Điển Hàn Việt', 50, N'TD1020    ', N'TH2010    ', N'LHK35     ', 33000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (30, N'TDOA36    ', N'Từ Điển Oxford Anh - Anh - Việt', 10, N'TD1020    ', N'DHQGHN2010', N'TW32      ', 67000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (31, N'TDTL38    ', N'Từ Điển Từ Láy', 10, N'TD1020    ', N'DT2010    ', N'BH34      ', 29000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (32, N'TDTT07    ', N'Thăm  Dò Tiềm Thức', 50, N'CT1020    ', N'TT2010    ', N'CGJ07     ', 40000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (33, N'TDTV37    ', N'Từ Điển Tiếng Việt', 40, N'TD1020    ', N'HD2010    ', N'GSHP33    ', 30000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (34, N'TĐV40     ', N'Từ Điển Đức Việt', 30, N'TD1020    ', N'HD2010    ', N'NTH36     ', 59000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (35, N'TH28      ', N'Toán Học', 40, N'SGK1020   ', N'GDVN2010  ', N'BGDVDT26  ', 50000)
INSERT [dbo].[SACH] ([Stt], [MaSach], [TenSach], [SoLuong], [MaTL], [MaNXB], [MaTG], [GiaBan]) VALUES (36, N'TNGKNVCB03', N'Tôi Nói Gì Khi Nói Về Chạy Bộ', 20, N'HK1020    ', N'HNV2010   ', N'HM03      ', 100000)
GO
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'ADB08     ', N'Alain de Botton')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'BC22      ', N'Barbara Coloroso')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'BGDVDT26  ', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'BH34      ', N'Bích Hằng')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'BS12      ', N'Bodo Schafer')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'C23       ', N'Chuyện')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'CGJ07     ', N'Carl Gustav Jung')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'ES28      ', N'Eriko Sato')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'GSHP33    ', N'GS. Hoàng Phê')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'GSMS21    ', N'GS Makoto Shichida')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'HM03      ', N'Haruki Murakami')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'JC18      ', N'Johan Cruyff')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'JS13      ', N'Jamey Stegmaier')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'KA04      ', N'Kito Aya')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'LDP16     ', N'Lý Dịch Phong')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'LHK35     ', N'Lê Huy Khoa')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'LYB31     ', N'Li Ya Bin')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'MO02      ', N'Michelle Obama')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'MR14      ', N'Markus Rach')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'MS17      ', N'Michael Schulman')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NDD11     ', N'Nguyễn Đức Dũng')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NGM10     ', N'NGregory Mankiw')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NGT30     ', N'Nguyên Thảo')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NiM19     ', N'Nia Maerani')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NKP25     ', N'Nguyễn Khắc Phi')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NM09      ', N'Niccolo Machiavelli')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NT05      ', N'Nikola Tesla')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'NTH36     ', N'Nguyễn Thu Hương')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'PC24      ', N'Patricia Campbell')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'PK01      ', N'Paul Kalanithi')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'QH06      ', N'Quốc Hội')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'STMTP15   ', N'Sơn Tùng M-TP')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'TSSW20    ', N'TS Sally Ward')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'TVG29     ', N'Trương Văn Giới')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'TW32      ', N'The Windy')
INSERT [dbo].[TACGIA] ([MaTG], [TenTG]) VALUES (N'VNNH27    ', N'Viện Ngôn Ngữ Hackers')
GO
INSERT [dbo].[TAIKHOAN] ([TaiKhoan], [MatKhau]) VALUES (N'1         ', N'123456              ')
INSERT [dbo].[TAIKHOAN] ([TaiKhoan], [MatKhau]) VALUES (N'2         ', N'123456              ')
GO
INSERT [dbo].[THANHVIEN] ([MaTv], [TenTv], [NgaySinh], [Sdt], [DiaChi], [DiemTichLuy]) VALUES (1, N'Hari', CAST(N'2000-01-01' AS Date), N'0909888481                                        ', N'Thủ Đức', 1000)
INSERT [dbo].[THANHVIEN] ([MaTv], [TenTv], [NgaySinh], [Sdt], [DiaChi], [DiemTichLuy]) VALUES (2, N'Qi', CAST(N'2000-02-02' AS Date), N'0938294718                                        ', N'Quận 9', 500)
GO
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'CT1020                        ', N'Chính trị')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'HK1020                        ', N'Hồi ký')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'KT1020                        ', N'Kinh tế')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'NTGT1020                      ', N'Nghệ thuật - Giải trí')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'PTTT1020                      ', N'Phát triển trí tuệ')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'SGK1020                       ', N'Sách giáo khoa')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'SNN1020                       ', N'Sách ngoại ngữ')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TD1020                        ', N'Từ điển')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TH1020                        ', N'Tin học')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TLKNS1020                     ', N'Tâm lý - Kỹ năng sống')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TN1020                        ', N'Thiếu Nhi')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TT1020                        ', N'Truyện tranh')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'TTh1020                       ', N'Tiểu thuyết')
INSERT [dbo].[THELOAI] ([MaTL], [TenTL]) VALUES (N'VH1020                        ', N'Văn học')
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([SoHD])
REFERENCES [dbo].[HOADON] ([SoHD])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVIEN]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_NXB] FOREIGN KEY([MaNXB])
REFERENCES [dbo].[NXB] ([MaNXB])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_NXB]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TACGIA] FOREIGN KEY([MaTG])
REFERENCES [dbo].[TACGIA] ([MaTG])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TACGIA]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_TAIKHOAN_NHANVIEN] FOREIGN KEY([TaiKhoan])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_TAIKHOAN_NHANVIEN]
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[dangnhap]
	@taikhoan nchar(10),
	@matkhau nchar(20)

AS
	
BEGIN
	DECLARE @pass nchar(20)
	select     *
	from     TAIKHOAN
	where    @taikhoan = TaiKhoan and @matkhau = MatKhau

if @@rowcount = 0    -- Invalid user
    return (-1)

if @matkhau + N'X' <> @pass + N'X'    -- Invalid password
    return (-2)

return (1) 
END
GO
/****** Object:  StoredProcedure [dbo].[timkiemSach]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[timkiemSach]
@masach nvarchar(50),
@tensach nvarchar(50),
@tentl nvarchar(50),
@tennxb nvarchar(50),
@tentg nvarchar(50)
as
select s.Stt, s.MaSach, s.TenSach, s.MaTG, s.MaTL, s.MaNXB,s.SoLuong,s.GiaBan
from SACH s, TACGIA tg, NXB n , THELOAI tl
where lower(s.MaSach) like N'%' + lower(@masach) + '%'
and lower(s.TenSach) like N'%' + lower(@tensach) + '%'
and lower(tg.TenTG) like N'%' + lower(@tentg) + '%'
and lower(n.TenNXB) like N'%' + LOWER(@tennxb) + '%'
and lower(tl.TenTL) like N'%' + lower(@tentl) + '%'
and s.MaNXB = n.MaNXB
and s.MaTG = tg.MaTG
and s.MaTL = tl.MaTL
order by Stt 
GO
/****** Object:  StoredProcedure [dbo].[UPDATEGIAPN]    Script Date: 12/8/2020 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[UPDATEGIAPN]
AS
BEGIN
	DECLARE @TEMP FLOAT
	SELECT @TEMP = SUM(C.Gia * C.SoLuongNhap)
	FROM CHITIETPHIEUNHAP C, PHIEUNHAP P
	WHERE C.SoPN = P.SoPN AND P.SoPN = 'PN05'

	UPDATE PHIEUNHAP
	SET ThanhTien = @TEMP
	WHERE PHIEUNHAP.SoPN = 'PN05'
END
GO
USE [master]
GO
ALTER DATABASE [Dtb_NhaSach] SET  READ_WRITE 
GO
