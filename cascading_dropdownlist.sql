USE [master]
GO
/****** Object:  Database [Cascading_ddl]    Script Date: 5/11/2017 12:52:54 AM ******/
CREATE DATABASE [Cascading_ddl]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cascading_ddl', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Cascading_ddl.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cascading_ddl_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Cascading_ddl_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cascading_ddl] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cascading_ddl].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cascading_ddl] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cascading_ddl] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cascading_ddl] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cascading_ddl] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cascading_ddl] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cascading_ddl] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cascading_ddl] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cascading_ddl] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cascading_ddl] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cascading_ddl] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cascading_ddl] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cascading_ddl] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cascading_ddl] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cascading_ddl] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cascading_ddl] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cascading_ddl] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cascading_ddl] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cascading_ddl] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cascading_ddl] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cascading_ddl] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cascading_ddl] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cascading_ddl] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cascading_ddl] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cascading_ddl] SET  MULTI_USER 
GO
ALTER DATABASE [Cascading_ddl] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cascading_ddl] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cascading_ddl] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cascading_ddl] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Cascading_ddl] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Cascading_ddl]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 5/11/2017 12:52:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[CityName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/11/2017 12:52:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 5/11/2017 12:52:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (1, 1, N'Abbeville')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (2, 1, N'Argo')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (3, 2, N'Buckeye')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (4, 2, N'Carefree')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (5, 3, N'Juneau')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (6, 3, N'Sitka')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (7, 4, N'Mumbai')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (8, 4, N'Pune')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (9, 5, N'Ahmedabad')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (10, 5, N'Gandhinagar')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (11, 6, N'Panjim')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (12, 6, N'Vasco')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (13, 7, N'Ottawa')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (14, 7, N'Port Hope')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (15, 8, N'Chandler')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (16, 8, N'Princeville')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (17, 9, N'Carman')
INSERT [dbo].[Cities] ([CityId], [StateId], [CityName]) VALUES (18, 9, N'Roblin')
INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (1, N'USA')
INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (2, N'India')
INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (3, N'Canada')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (1, 1, N'Alabama')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (2, 1, N'Arizona')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (3, 1, N'Alaska')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (4, 2, N'Maharashtra')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (5, 2, N'Gujarat')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (6, 2, N'Goa')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (7, 3, N'Ontario')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (8, 3, N'Quebec')
INSERT [dbo].[States] ([StateId], [CountryId], [StateName]) VALUES (9, 3, N'Manitoba')
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_States] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_States]
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD  CONSTRAINT [FK_States_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
GO
ALTER TABLE [dbo].[States] CHECK CONSTRAINT [FK_States_Countries]
GO
USE [master]
GO
ALTER DATABASE [Cascading_ddl] SET  READ_WRITE 
GO
