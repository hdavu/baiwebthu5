USE [gioithieuoto]
GO
/****** Object:  Table [dbo].[baiviet]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[baiviet](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[loaibaivietma] [int] NOT NULL,
	[tieude] [nvarchar](50) NOT NULL,
	[noidung] [ntext] NOT NULL,
	[anh] [varchar](200) NULL,
	[thoigian] [date] NULL,
	[tomtat] [ntext] NOT NULL,
 CONSTRAINT [PK_baiviet] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hangxe]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hangxe](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_hangxe] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaibaiviet]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaibaiviet](
	[ma] [int] NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loaibaiviet] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaixe]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaixe](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loaixe] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nguoidung](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [varchar](50) NOT NULL,
	[matkhau] [varchar](max) NOT NULL,
	[quyenma] [int] NOT NULL,
 CONSTRAINT [PK_nguoidung] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[oto]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[oto](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[masanpham] [varchar](50) NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
	[hangsanxuatma] [int] NOT NULL,
	[loaixema] [int] NOT NULL,
	[anh] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NOT NULL,
	[dongco] [nvarchar](50) NOT NULL,
	[hopso] [nvarchar](50) NOT NULL,
	[congsuat] [nvarchar](50) NOT NULL,
	[momen] [nvarchar](50) NOT NULL,
	[gia] [int] NULL,
	[thoidiemramat] [date] NULL,
 CONSTRAINT [PK_oto] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[quyen]    Script Date: 07/05/2017 6:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quyen](
	[ma] [int] NOT NULL,
	[ten] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_quyen] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[baiviet] ON 

INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (5, 2, N'Bài 2', N'áđâsd', NULL, NULL, N'test')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (6, 1, N'12', N'12', N'12', NULL, N'11')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (7, 2, N'123123123', N'123123123', NULL, NULL, N'123123123123123')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (8, 1, N'á', N'ád', NULL, CAST(N'2014-01-01' AS Date), N'1ád')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (9, 2, N'1', N'12', N'~/Content/imgphat.jpg', CAST(N'2014-01-01' AS Date), N'1111')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (10, 2, N'Ảnh', N'12', N'~/Content/img/phat.jpg', CAST(N'2014-01-01' AS Date), N'122')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (11, 1, N'ảnh 2', N'áđá ', N'phat.jpg', CAST(N'2014-01-01' AS Date), N'123e342342123dasfaè')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (12, 1, N'ngafy thasng', N'qwe', N'1.jpg', NULL, N'asdasdasd')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (13, 1, N'12312', N'123123', N'1.jpg', NULL, N'123123')
INSERT [dbo].[baiviet] ([ma], [loaibaivietma], [tieude], [noidung], [anh], [thoigian], [tomtat]) VALUES (14, 1, N'123123', N'123123123', N'phat.jpg', CAST(N'2017-05-04' AS Date), N'123123123')
SET IDENTITY_INSERT [dbo].[baiviet] OFF
SET IDENTITY_INSERT [dbo].[hangxe] ON 

INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (1, N'Lexus')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (2, N'Kia')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (3, N'BMW')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (4, N'Land Rover')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (5, N'Mazda')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (6, N'Mercedes Benz')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (7, N'Toyota')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (8, N'Hyundai')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (9, N'Honda')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (10, N'Ford')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (11, N'Mini Cooper')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (12, N'Porsche')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (13, N'Bentley')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (14, N'Audi')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (15, N'Isuzu')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (16, N'Volkswagen')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (17, N'Jaguar')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (18, N'Mitsubishi')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (19, N'Chevrolet')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (20, N'Nissan')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (21, N'Suzuki')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (22, N'Jeep')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (23, N'Rolls Royce')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (24, N'Aston Martin')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (25, N'Bugatti')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (26, N'Ferrari')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (27, N'Lamborghini')
INSERT [dbo].[hangxe] ([ma], [ten]) VALUES (28, N'Volvo')
SET IDENTITY_INSERT [dbo].[hangxe] OFF
INSERT [dbo].[loaibaiviet] ([ma], [ten]) VALUES (1, N'Bài viết kỹ thuật')
INSERT [dbo].[loaibaiviet] ([ma], [ten]) VALUES (2, N'Bài viết đánh giá')
SET IDENTITY_INSERT [dbo].[loaixe] ON 

INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (2, N'Sedan')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (3, N'SUV')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (4, N'Crossover')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (5, N'Pick-up')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (6, N'Minivan')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (7, N'Coupe')
INSERT [dbo].[loaixe] ([ma], [ten]) VALUES (8, N'Convertible')
SET IDENTITY_INSERT [dbo].[loaixe] OFF
SET IDENTITY_INSERT [dbo].[nguoidung] ON 

INSERT [dbo].[nguoidung] ([ma], [ten], [matkhau], [quyenma]) VALUES (1, N'hdz', N'1', 1)
INSERT [dbo].[nguoidung] ([ma], [ten], [matkhau], [quyenma]) VALUES (2, N'modkt', N'1', 2)
INSERT [dbo].[nguoidung] ([ma], [ten], [matkhau], [quyenma]) VALUES (3, N'modbb', N'1', 3)
INSERT [dbo].[nguoidung] ([ma], [ten], [matkhau], [quyenma]) VALUES (4, N'noths', N'1', 0)
SET IDENTITY_INSERT [dbo].[nguoidung] OFF
INSERT [dbo].[quyen] ([ma], [ten]) VALUES (0, N'bikhoa')
INSERT [dbo].[quyen] ([ma], [ten]) VALUES (1, N'admin')
INSERT [dbo].[quyen] ([ma], [ten]) VALUES (2, N'mod-kt')
INSERT [dbo].[quyen] ([ma], [ten]) VALUES (3, N'mod-bb')
ALTER TABLE [dbo].[baiviet]  WITH CHECK ADD  CONSTRAINT [FK_baiviet_loaibaiviet] FOREIGN KEY([loaibaivietma])
REFERENCES [dbo].[loaibaiviet] ([ma])
GO
ALTER TABLE [dbo].[baiviet] CHECK CONSTRAINT [FK_baiviet_loaibaiviet]
GO
ALTER TABLE [dbo].[nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_nguoidung_quyen] FOREIGN KEY([quyenma])
REFERENCES [dbo].[quyen] ([ma])
GO
ALTER TABLE [dbo].[nguoidung] CHECK CONSTRAINT [FK_nguoidung_quyen]
GO
ALTER TABLE [dbo].[oto]  WITH CHECK ADD  CONSTRAINT [FK_oto_hangxe] FOREIGN KEY([hangsanxuatma])
REFERENCES [dbo].[hangxe] ([ma])
GO
ALTER TABLE [dbo].[oto] CHECK CONSTRAINT [FK_oto_hangxe]
GO
ALTER TABLE [dbo].[oto]  WITH CHECK ADD  CONSTRAINT [FK_oto_loaixe] FOREIGN KEY([loaixema])
REFERENCES [dbo].[loaixe] ([ma])
GO
ALTER TABLE [dbo].[oto] CHECK CONSTRAINT [FK_oto_loaixe]
GO
