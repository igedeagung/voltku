USE [master]
GO
/****** Object:  Database [volt]    Script Date: 5/4/2020 2:00:48 PM ******/
CREATE DATABASE [volt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'volt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\volt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'volt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\volt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [volt] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [volt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [volt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [volt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [volt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [volt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [volt] SET ARITHABORT OFF 
GO
ALTER DATABASE [volt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [volt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [volt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [volt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [volt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [volt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [volt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [volt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [volt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [volt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [volt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [volt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [volt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [volt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [volt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [volt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [volt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [volt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [volt] SET  MULTI_USER 
GO
ALTER DATABASE [volt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [volt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [volt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [volt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [volt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [volt] SET QUERY_STORE = OFF
GO
USE [volt]
GO
/****** Object:  Table [dbo].[buah]    Script Date: 5/4/2020 2:00:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buah](
	[id] [int] NOT NULL,
	[nama] [varchar](50) NOT NULL,
	[jenis] [varchar](50) NOT NULL,
	[keterangan] [varchar](50) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [volt] SET  READ_WRITE 
GO
