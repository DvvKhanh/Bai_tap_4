USE [master]
GO
/****** Object:  Database [TKB]    Script Date: 14/04/2025 10:29:56 CH ******/
CREATE DATABASE [TKB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TKB', FILENAME = N'C:\HequantriCSDL\TKB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TKB_log', FILENAME = N'C:\HequantriCSDL\TKB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TKB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TKB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TKB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TKB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TKB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TKB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TKB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TKB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TKB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TKB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TKB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TKB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TKB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TKB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TKB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TKB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TKB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TKB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TKB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TKB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TKB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TKB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TKB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TKB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TKB] SET RECOVERY FULL 
GO
ALTER DATABASE [TKB] SET  MULTI_USER 
GO
ALTER DATABASE [TKB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TKB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TKB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TKB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TKB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TKB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'TKB', N'ON'
GO
ALTER DATABASE [TKB] SET QUERY_STORE = ON
GO
ALTER DATABASE [TKB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TKB]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 14/04/2025 10:29:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [varchar](5) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopHocPhan]    Script Date: 14/04/2025 10:29:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopHocPhan](
	[MaLHP] [varchar](5) NOT NULL,
	[Tenlop] [varchar](10) NULL,
 CONSTRAINT [PK_LopHocPhan] PRIMARY KEY CLUSTERED 
(
	[MaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 14/04/2025 10:29:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](7) NOT NULL,
	[TenMH] [nvarchar](100) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKB]    Script Date: 14/04/2025 10:29:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKB](
	[MaTKB] [varchar](5) NOT NULL,
	[MaGV] [varchar](5) NULL,
	[MaLHP] [varchar](5) NULL,
	[MaMH] [varchar](7) NULL,
	[PhongHoc] [varchar](7) NULL,
	[Thu] [int] NULL,
	[TietBD] [int] NULL,
	[SoTiet] [int] NULL,
	[GioVao] [time](0) NULL,
	[GioRa] [time](0) NULL,
	[NgayHoc] [date] NULL,
 CONSTRAINT [PK_TKB] PRIMARY KEY CLUSTERED 
(
	[MaTKB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV01', N'N.V.Huy')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV02', N'N.T.Hương')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV03', N'P.T.T.Hiền')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV04', N'T.T.N.Linh')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV05', N'T.C.Nhung')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV06', N'N.T.Linh')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV07', N'N.V.Tính')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV08', N'Đ.D.Cốp')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV09', N'T.T.Thanh')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV10', N'N.M.Ngọc')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV11', N'Đ.T.Hiên')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV12', N'N.T.Duy')
INSERT [dbo].[GiaoVien] ([MaGV], [HoTen]) VALUES (N'GV13', N'L.T.H.Trang')
GO
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP01', N'58KTP')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP02', N'60CNTDH2')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP03', N'59KMT')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP04', N'60CNTDH6')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP05', N'58CDT1')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP06', N'57KMT')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP07', N'58CDT3')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP08', N'58KTD2')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP09', N'58KTD1')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP10', N'60CNTDH5')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP11', N'60CNTDH1')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP12', N'59KC2')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP13', N'59KC1')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP14', N'58CDT2')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP15', N'60CNTDH7')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP16', N'60CNTDH3')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP17', N'60KMT')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP18', N'58CLCDT')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP19', N'60CNTDH4')
INSERT [dbo].[LopHocPhan] ([MaLHP], [Tenlop]) VALUES (N'LHP20', N'59KXD')
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0211', N'Tin học trong kỹ thuật')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0343', N'Chuyển đổi số')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0478', N'Khoa học dữ liệu')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0479', N'Lập trình Python')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0480', N'Công nghệ phần mềm')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE0491', N'Phương pháp tính')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE317', N'Toán rời rạc')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE408', N'Vi xử lý – Vi điều khiển')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE415', N'Kiến trúc máy tính')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE433', N'Quản trị mạng')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE560', N'Hệ quản trị cơ sở dữ liệu')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TEE567', N'Phân tích và thiết kế hệ thống')
GO
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB01', N'GV01', N'LHP01', N'TEE0479', N'A9-204', 2, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB02', N'GV02', N'LHP02', N'TEE0211', N'A10-101', 2, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB03', N'GV03', N'LHP03', N'TEE415', N'A10-403', 2, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB04', N'GV04', N'LHP04', N'TEE0211', N'A10-104', 2, 6, 1, CAST(N'13:55:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB05', N'GV05', N'LHP05', N'TEE408', N'A10-401', 2, 6, 2, CAST(N'13:55:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB06', N'GV01', N'LHP06', N'TEE0478', N'A8-303', 2, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-17' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB07', N'GV03', N'LHP07', N'TEE408', N'A10-501', 3, 1, 1, CAST(N'06:30:00' AS Time), CAST(N'07:45:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB08', N'GV06', N'LHP08', N'TEE408', N'A8-102', 3, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB09', N'GV07', N'LHP01', N'TEE433', N'A9-204', 3, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB10', N'GV08', N'LHP09', N'TEE408', N'A8-101', 3, 3, 1, CAST(N'09:20:00' AS Time), CAST(N'10:35:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB11', N'GV09', N'LHP10', N'TEE0211', N'A10-201', 3, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB12', N'GV01', N'LHP01', N'TEE0479', N'A9-204', 3, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB13', N'GV04', N'LHP11', N'TEE0211', N'A10-102', 3, 4, 1, CAST(N'10:45:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB14', N'GV03', N'LHP03', N'TEE408', N'A10-503', 3, 5, 1, CAST(N'12:30:00' AS Time), CAST(N'13:45:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB15', N'GV02', N'LHP12', N'TEE0211', N'A9-102', 3, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB16', N'GV06', N'LHP06', N'TEE0479', N'A8-303', 3, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB17', N'GV10', N'LHP03', N'TEE0343', N'A10-503', 3, 6, 2, CAST(N'13:55:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB18', N'GV05', N'LHP05', N'TEE408', N'A10-401', 3, 6, 2, CAST(N'13:55:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB19', N'GV01', N'LHP06', N'TEE0478', N'A8-303', 3, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-18' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB20', N'GV11', N'LHP13', N'TEE0211', N'A9-302', 4, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB21', N'GV03', N'LHP07', N'TEE408', N'A10-501', 4, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB22', N'GV09', N'LHP01', N'TEE567', N'A9-204', 4, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB23', N'GV08', N'LHP01', N'TEE560', N'A9-204', 4, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB24', N'GV02', N'LHP06', N'TEE0480', N'A8-303', 4, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB25', N'GV08', N'LHP14', N'TEE408', N'A10-502', 4, 6, 1, CAST(N'13:55:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB26', N'GV02', N'LHP02', N'TEE0211', N'A10-101', 4, 7, 1, CAST(N'15:20:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB27', N'GV06', N'LHP06', N'TEE0479', N'A8-303', 4, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB28', N'GV03', N'LHP03', N'TEE415', N'A10-503', 4, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-19' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB29', N'GV07', N'LHP15', N'TEE0211', N'A10-202', 5, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB30', N'GV11', N'LHP16', N'TEE0211', N'A10-104', 5, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB31', N'GV09', N'LHP10', N'TEE0211', N'A10-201', 5, 2, 1, CAST(N'07:55:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB32', N'GV04', N'LHP11', N'TEE0211', N'A10-102', 5, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB33', N'GV09', N'LHP17', N'TEE0211', N'A16-401', 5, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB34', N'GV08', N'LHP01', N'TEE560', N'A9-204', 5, 3, 2, CAST(N'09:20:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB35', N'GV02', N'LHP06', N'TEE0480', N'A8-303', 5, 5, 2, CAST(N'12:30:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB36', N'GV12', N'LHP18', N'TEE408', N'A7-203', 5, 6, 1, CAST(N'13:55:00' AS Time), CAST(N'15:10:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB37', N'GV04', N'LHP04', N'TEE0211', N'A8-102', 5, 6, 2, CAST(N'13:55:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB38', N'GV02', N'LHP12', N'TEE0211', N'A9-301', 5, 7, 1, CAST(N'15:20:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB39', N'GV13', N'LHP19', N'TEE0211', N'A10-102', 5, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB40', N'GV07', N'LHP20', N'TEE0491', N'A7-204', 5, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB41', N'GV03', N'LHP03', N'TEE408', N'A10-403', 5, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB42', N'GV08', N'LHP14', N'TEE408', N'A10-502', 5, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-20' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB43', N'GV09', N'LHP17', N'TEE0211', N'A16-301', 6, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB44', N'GV08', N'LHP09', N'TEE408', N'A8-101', 6, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB45', N'GV07', N'LHP01', N'TEE433', N'A9-204', 6, 1, 2, CAST(N'06:30:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB46', N'GV11', N'LHP16', N'TEE0211', N'A10-104', 6, 2, 1, CAST(N'07:55:00' AS Time), CAST(N'09:10:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB47', N'GV07', N'LHP15', N'TEE0211', N'A10-202', 6, 3, 1, CAST(N'09:20:00' AS Time), CAST(N'10:35:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB48', N'GV11', N'LHP13', N'TEE0211', N'A9-302', 6, 3, 1, CAST(N'09:20:00' AS Time), CAST(N'10:35:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB49', N'GV06', N'LHP08', N'TEE408', N'A10-402', 6, 3, 1, CAST(N'09:20:00' AS Time), CAST(N'10:35:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB50', N'GV02', N'LHP03', N'TEE317', N'A10-301', 6, 6, 2, CAST(N'13:55:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB51', N'GV13', N'LHP19', N'TEE0211', N'A10-102', 6, 7, 1, CAST(N'15:20:00' AS Time), CAST(N'16:35:00' AS Time), CAST(N'2025-03-21' AS Date))
INSERT [dbo].[TKB] ([MaTKB], [MaGV], [MaLHP], [MaMH], [PhongHoc], [Thu], [TietBD], [SoTiet], [GioVao], [GioRa], [NgayHoc]) VALUES (N'TKB52', N'GV12', N'LHP18', N'TEE408', N'A7-203', 6, 7, 2, CAST(N'15:20:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2025-03-21' AS Date))
GO
ALTER TABLE [dbo].[TKB]  WITH CHECK ADD  CONSTRAINT [FK_TKB_GiaoVien] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GiaoVien] ([MaGV])
GO
ALTER TABLE [dbo].[TKB] CHECK CONSTRAINT [FK_TKB_GiaoVien]
GO
ALTER TABLE [dbo].[TKB]  WITH CHECK ADD  CONSTRAINT [FK_TKB_LopHocPhan] FOREIGN KEY([MaLHP])
REFERENCES [dbo].[LopHocPhan] ([MaLHP])
GO
ALTER TABLE [dbo].[TKB] CHECK CONSTRAINT [FK_TKB_LopHocPhan]
GO
ALTER TABLE [dbo].[TKB]  WITH CHECK ADD  CONSTRAINT [FK_TKB_MonHoc] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[TKB] CHECK CONSTRAINT [FK_TKB_MonHoc]
GO
USE [master]
GO
ALTER DATABASE [TKB] SET  READ_WRITE 
GO
