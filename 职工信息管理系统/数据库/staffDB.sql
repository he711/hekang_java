USE [master]
GO
/****** Object:  Database [staffDB]    Script Date: 2021/12/22 17:24:57 ******/
CREATE DATABASE [staffDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'staffDB', FILENAME = N'c:\The_worker_information_DB\staffDB.mdf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'ScoreLog', FILENAME = N'c:\The_worker_information_DB\staffLog.ldf' , SIZE = 2048KB , MAXSIZE = 5120KB , FILEGROWTH = 1024KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [staffDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [staffDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [staffDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [staffDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [staffDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [staffDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [staffDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [staffDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [staffDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [staffDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [staffDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [staffDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [staffDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [staffDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [staffDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [staffDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [staffDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [staffDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [staffDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [staffDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [staffDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [staffDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [staffDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [staffDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [staffDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [staffDB] SET  MULTI_USER 
GO
ALTER DATABASE [staffDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [staffDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [staffDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [staffDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [staffDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [staffDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [staffDB] SET QUERY_STORE = OFF
GO
USE [staffDB]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2021/12/22 17:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_log] [varchar](255) NULL,
	[password_log] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worker]    Script Date: 2021/12/22 17:24:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worker](
	[won] [int] NOT NULL,
	[name] [char](10) NULL,
	[sex] [char](2) NULL,
	[age] [smallint] NULL,
	[education] [char](6) NULL,
	[salary] [int] NULL,
	[address] [varchar](255) NULL,
	[phone] [bigint] NULL,
	[hiredate] [date] NULL,
	[working_condition] [varchar](255) NULL,
 CONSTRAINT [PK_The_worker_information] PRIMARY KEY CLUSTERED 
(
	[won] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([admin_log], [password_log]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021001, N'何刚      ', N'男', 22, N'专科  ', 3500, N'广西百色市平果市果化镇', 18777172613, CAST(N'2021-01-20' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021002, N'张晁溅    ', N'女', 23, N'本科  ', 4500, N'广西钦州市灵山县不懂区', 18777172614, CAST(N'2020-03-15' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021004, N'曹阿满    ', N'女', 41, N'研究生', 2500, N'广西贵港市', 15878176258, CAST(N'2021-12-09' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021005, N'李田所    ', N'女', 34, N'中专  ', 5100, N'广西南宁市西乡塘区', 18777172613, CAST(N'2021-12-10' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021006, N'李何康    ', N'男', 41, N'本科  ', 2021, N'北京', 12345678901, CAST(N'2021-12-10' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021007, N'张三      ', N'男', 23, N'研究生', 6000, N'北京', 12345678912, CAST(N'2021-12-10' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021008, N'张三      ', N'女', 35, N'小学  ', 3400, N'广西', 12345678909, CAST(N'2021-12-10' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021009, N'王五      ', N'男', 34, N'本科  ', 4500, N'南宁', 12345678909, CAST(N'2021-12-12' AS Date), N'离职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021010, N'老六      ', N'男', 30, N'研究生', 5400, N'南宁', 123456789012, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021011, N'阿奇      ', N'女', 23, N'中专  ', 3200, N'南京', 123456789098, CAST(N'2021-12-22' AS Date), N'离职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021012, N'胡立      ', N'男', 34, N'研究生', 7600, N'苏州', 123445678909, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021013, N'侃大山    ', N'男', 45, N'初中  ', 3500, N'海南', 123455678909, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021014, N'李撒旦    ', N'男', 23, N'高中  ', 3700, N'柳州', 123456678909, CAST(N'2021-12-22' AS Date), N'离职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021015, N'张化      ', N'男', 32, N'研究生', 5400, N'柳州', 12345678900, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021016, N'李康康    ', N'女', 46, N'专科  ', 6500, N'海南', 123456778909, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021017, N'李文赫    ', N'男', 23, N'高中  ', 4500, N'南宁', 12345678967, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021018, N'大神      ', N'男', 23, N'研究生', 7800, N'深圳', 12345678908, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021019, N'陈南纬    ', N'男', 24, N'专科  ', 6000, N'海南', 12345677773, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021020, N'陈浩      ', N'男', 34, N'高中  ', 3400, N'广州', 12345678988, CAST(N'2021-12-22' AS Date), N'离职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021021, N'胡格      ', N'男', 34, N'小学  ', 4500, N'南宁', 12345678909, CAST(N'2021-12-22' AS Date), N'离职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021022, N'李何      ', N'女', 34, N'专科  ', 6400, N'北京', 12345678909, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021023, N'王和      ', N'女', 23, N'初中  ', 2300, N'柳州', 12345677776, CAST(N'2021-12-22' AS Date), N'在职')
INSERT [dbo].[Worker] ([won], [name], [sex], [age], [education], [salary], [address], [phone], [hiredate], [working_condition]) VALUES (2021024, N'李丽      ', N'女', 25, N'研究生', 5000, N'南宁', 12345677897, CAST(N'2021-12-22' AS Date), N'在职')
GO
USE [master]
GO
ALTER DATABASE [staffDB] SET  READ_WRITE 
GO
