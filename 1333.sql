USE [master]
GO
/****** Object:  Database [RoketPizza]    Script Date: 21.12.2023 10:17:05 ******/
CREATE DATABASE [RoketPizza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RoketPizza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\RoketPizza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RoketPizza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1\MSSQL\DATA\RoketPizza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RoketPizza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RoketPizza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RoketPizza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RoketPizza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RoketPizza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RoketPizza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RoketPizza] SET ARITHABORT OFF 
GO
ALTER DATABASE [RoketPizza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RoketPizza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RoketPizza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RoketPizza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RoketPizza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RoketPizza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RoketPizza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RoketPizza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RoketPizza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RoketPizza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RoketPizza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RoketPizza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RoketPizza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RoketPizza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RoketPizza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RoketPizza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RoketPizza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RoketPizza] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RoketPizza] SET  MULTI_USER 
GO
ALTER DATABASE [RoketPizza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RoketPizza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RoketPizza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RoketPizza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RoketPizza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RoketPizza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [RoketPizza] SET QUERY_STORE = OFF
GO
USE [RoketPizza]
GO
/****** Object:  Table [dbo].[Change]    Script Date: 21.12.2023 10:17:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Change](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Date] [date] NULL,
	[IdOklad] [int] NULL,
	[IdUsers] [int] NULL,
 CONSTRAINT [PK_Change] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oklad]    Script Date: 21.12.2023 10:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oklad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Cash] [int] NOT NULL,
	[CashHour] [int] NOT NULL,
	[Time] [int] NOT NULL,
 CONSTRAINT [PK_Oklad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.12.2023 10:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21.12.2023 10:17:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Change] ON 

INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (1, N'Кошелев   ', CAST(N'2020-12-10' AS Date), 1, 2)
INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (2, N'Евтушенко ', CAST(N'2020-12-10' AS Date), 3, 3)
INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (3, N'Евтушенко ', CAST(N'2020-12-11' AS Date), 4, 3)
INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (9, N'Губанов   ', CAST(N'2020-12-10' AS Date), 5, 4)
INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (10, N'Губанов   ', CAST(N'2020-12-11' AS Date), 6, 4)
INSERT [dbo].[Change] ([Id], [Name], [Date], [IdOklad], [IdUsers]) VALUES (11, N'Губанов   ', CAST(N'2020-12-12' AS Date), 7, 4)
SET IDENTITY_INSERT [dbo].[Change] OFF
GO
SET IDENTITY_INSERT [dbo].[Oklad] ON 

INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (1, 1800, 180, 10)
INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (3, 540, 180, 3)
INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (4, 22000, 220, 100)
INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (5, 1000, 200, 5)
INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (6, 1440, 180, 8)
INSERT [dbo].[Oklad] ([Id], [Cash], [CashHour], [Time]) VALUES (7, 2420, 220, 11)
SET IDENTITY_INSERT [dbo].[Oklad] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Админ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Пользователь')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Password], [IdRole]) VALUES (1, N'Admin', N'1', 1)
INSERT [dbo].[Users] ([Id], [Name], [Password], [IdRole]) VALUES (2, N'Александр Кошелев', N'1', 2)
INSERT [dbo].[Users] ([Id], [Name], [Password], [IdRole]) VALUES (3, N'Василий Евтушенко', N'1', 2)
INSERT [dbo].[Users] ([Id], [Name], [Password], [IdRole]) VALUES (4, N'Марк Губанов', N'1', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Change]  WITH CHECK ADD  CONSTRAINT [FK_Change_Oklad] FOREIGN KEY([IdOklad])
REFERENCES [dbo].[Oklad] ([Id])
GO
ALTER TABLE [dbo].[Change] CHECK CONSTRAINT [FK_Change_Oklad]
GO
ALTER TABLE [dbo].[Change]  WITH CHECK ADD  CONSTRAINT [FK_Change_Users] FOREIGN KEY([IdUsers])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Change] CHECK CONSTRAINT [FK_Change_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [RoketPizza] SET  READ_WRITE 
GO
