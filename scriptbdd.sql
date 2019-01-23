USE [master]
GO
/****** Object:  Database [KartinaTP]    Script Date: 23/01/2019 12:09:59 ******/
CREATE DATABASE [KartinaTP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KartinaTP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\KartinaTP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KartinaTP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\KartinaTP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KartinaTP] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KartinaTP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KartinaTP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KartinaTP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KartinaTP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KartinaTP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KartinaTP] SET ARITHABORT OFF 
GO
ALTER DATABASE [KartinaTP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KartinaTP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KartinaTP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KartinaTP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KartinaTP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KartinaTP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KartinaTP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KartinaTP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KartinaTP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KartinaTP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KartinaTP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KartinaTP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KartinaTP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KartinaTP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KartinaTP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KartinaTP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KartinaTP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KartinaTP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KartinaTP] SET  MULTI_USER 
GO
ALTER DATABASE [KartinaTP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KartinaTP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KartinaTP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KartinaTP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KartinaTP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KartinaTP] SET QUERY_STORE = OFF
GO
USE [KartinaTP]
GO
/****** Object:  Table [dbo].[Adresse]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresse](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Rue] [nvarchar](250) NOT NULL,
	[CodePostal] [nchar](10) NOT NULL,
	[Ville] [nvarchar](50) NOT NULL,
	[Pays] [nvarchar](50) NOT NULL,
	[IDUser] [int] NULL,
 CONSTRAINT [PK_Adresse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cadre]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cadre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Prix] [int] NOT NULL,
 CONSTRAINT [PK_Cadre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Commande]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Commande](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Statut] [nvarchar](200) NOT NULL,
	[IDUser] [int] NOT NULL,
 CONSTRAINT [PK_Commande] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailCommande]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailCommande](
	[Id] [int] NOT NULL,
	[NbPhotos] [int] NOT NULL,
	[IDCommande] [int] NOT NULL,
	[PrixPhoto] [int] NOT NULL,
	[IDPhoto] [int] NOT NULL,
	[IDFormat] [int] NOT NULL,
	[IDFinition] [int] NOT NULL,
	[IDCadre] [int] NOT NULL,
 CONSTRAINT [PK_DetailCommande] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailCommandePhoto]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailCommandePhoto](
	[IDdetailCommande] [int] NOT NULL,
	[IDPhoto] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Finition]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Finition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](200) NOT NULL,
	[Prix] [int] NOT NULL,
 CONSTRAINT [PK_Finition] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinitionCadre]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinitionCadre](
	[IDFinition] [int] NOT NULL,
	[IDCadre] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Format]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Format](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Prix] [int] NOT NULL,
 CONSTRAINT [PK_Format_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormatFinition]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormatFinition](
	[IDFormat] [int] NOT NULL,
	[IDFinition] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orientation]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orientation](
	[Id] [int] NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[IDPhoto] [int] NOT NULL,
 CONSTRAINT [PK_Orientation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Titre] [nvarchar](200) NOT NULL,
	[Prix] [int] NOT NULL,
	[Chemin] [nvarchar](250) NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[NbTiragesMax] [nchar](10) NOT NULL,
	[IDUser] [int] NOT NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoFormat]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoFormat](
	[IDPhoto] [int] NOT NULL,
	[IDFormat] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotoTag]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoTag](
	[IDPhoto] [int] NOT NULL,
	[IDTag] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titre] [nvarchar](50) NOT NULL,
	[IDUser] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[Description] [text] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](50) NOT NULL,
	[IDPhoto] [int] NOT NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 23/01/2019 12:09:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Civilité] [nvarchar](50) NOT NULL,
	[Prenom] [nvarchar](200) NOT NULL,
	[Nom] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[MotDePasse] [nvarchar](200) NOT NULL,
	[Telephone] [nvarchar](50) NULL,
	[Biographie] [text] NULL,
 CONSTRAINT [PK_Vendeur] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adresse]  WITH CHECK ADD  CONSTRAINT [FK_Adresse_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Adresse] CHECK CONSTRAINT [FK_Adresse_User]
GO
ALTER TABLE [dbo].[DetailCommande]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommande_Cadre] FOREIGN KEY([IDCadre])
REFERENCES [dbo].[Cadre] ([Id])
GO
ALTER TABLE [dbo].[DetailCommande] CHECK CONSTRAINT [FK_DetailCommande_Cadre]
GO
ALTER TABLE [dbo].[DetailCommande]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommande_Commande] FOREIGN KEY([IDCommande])
REFERENCES [dbo].[Commande] ([Id])
GO
ALTER TABLE [dbo].[DetailCommande] CHECK CONSTRAINT [FK_DetailCommande_Commande]
GO
ALTER TABLE [dbo].[DetailCommande]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommande_Format] FOREIGN KEY([IDFormat])
REFERENCES [dbo].[Format] ([id])
GO
ALTER TABLE [dbo].[DetailCommande] CHECK CONSTRAINT [FK_DetailCommande_Format]
GO
ALTER TABLE [dbo].[DetailCommande]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommande_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[DetailCommande] CHECK CONSTRAINT [FK_DetailCommande_Photo]
GO
ALTER TABLE [dbo].[DetailCommandePhoto]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommandePhoto_DetailCommande] FOREIGN KEY([IDdetailCommande])
REFERENCES [dbo].[DetailCommande] ([Id])
GO
ALTER TABLE [dbo].[DetailCommandePhoto] CHECK CONSTRAINT [FK_DetailCommandePhoto_DetailCommande]
GO
ALTER TABLE [dbo].[DetailCommandePhoto]  WITH CHECK ADD  CONSTRAINT [FK_DetailCommandePhoto_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[DetailCommandePhoto] CHECK CONSTRAINT [FK_DetailCommandePhoto_Photo]
GO
ALTER TABLE [dbo].[Finition]  WITH CHECK ADD  CONSTRAINT [FK_Finition_Finition] FOREIGN KEY([id])
REFERENCES [dbo].[Finition] ([id])
GO
ALTER TABLE [dbo].[Finition] CHECK CONSTRAINT [FK_Finition_Finition]
GO
ALTER TABLE [dbo].[FinitionCadre]  WITH CHECK ADD  CONSTRAINT [FK_FinitionCadre_Cadre] FOREIGN KEY([IDCadre])
REFERENCES [dbo].[Cadre] ([Id])
GO
ALTER TABLE [dbo].[FinitionCadre] CHECK CONSTRAINT [FK_FinitionCadre_Cadre]
GO
ALTER TABLE [dbo].[FinitionCadre]  WITH CHECK ADD  CONSTRAINT [FK_FinitionCadre_Finition] FOREIGN KEY([IDFinition])
REFERENCES [dbo].[Finition] ([id])
GO
ALTER TABLE [dbo].[FinitionCadre] CHECK CONSTRAINT [FK_FinitionCadre_Finition]
GO
ALTER TABLE [dbo].[Format]  WITH CHECK ADD  CONSTRAINT [FK_Format_Finition] FOREIGN KEY([id])
REFERENCES [dbo].[Finition] ([id])
GO
ALTER TABLE [dbo].[Format] CHECK CONSTRAINT [FK_Format_Finition]
GO
ALTER TABLE [dbo].[FormatFinition]  WITH CHECK ADD  CONSTRAINT [FK_FormatFinition_Finition] FOREIGN KEY([IDFinition])
REFERENCES [dbo].[Finition] ([id])
GO
ALTER TABLE [dbo].[FormatFinition] CHECK CONSTRAINT [FK_FormatFinition_Finition]
GO
ALTER TABLE [dbo].[FormatFinition]  WITH CHECK ADD  CONSTRAINT [FK_FormatFinition_Format] FOREIGN KEY([IDFormat])
REFERENCES [dbo].[Format] ([id])
GO
ALTER TABLE [dbo].[FormatFinition] CHECK CONSTRAINT [FK_FormatFinition_Format]
GO
ALTER TABLE [dbo].[Orientation]  WITH CHECK ADD  CONSTRAINT [FK_Orientation_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[Orientation] CHECK CONSTRAINT [FK_Orientation_Photo]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_User]
GO
ALTER TABLE [dbo].[PhotoFormat]  WITH CHECK ADD  CONSTRAINT [FK_PhotoFormat_Format] FOREIGN KEY([IDFormat])
REFERENCES [dbo].[Format] ([id])
GO
ALTER TABLE [dbo].[PhotoFormat] CHECK CONSTRAINT [FK_PhotoFormat_Format]
GO
ALTER TABLE [dbo].[PhotoFormat]  WITH CHECK ADD  CONSTRAINT [FK_PhotoFormat_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[PhotoFormat] CHECK CONSTRAINT [FK_PhotoFormat_Photo]
GO
ALTER TABLE [dbo].[PhotoTag]  WITH CHECK ADD  CONSTRAINT [FK_PhotoTag_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[PhotoTag] CHECK CONSTRAINT [FK_PhotoTag_Photo]
GO
ALTER TABLE [dbo].[PhotoTag]  WITH CHECK ADD  CONSTRAINT [FK_PhotoTag_Tag] FOREIGN KEY([IDTag])
REFERENCES [dbo].[Tag] ([Id])
GO
ALTER TABLE [dbo].[PhotoTag] CHECK CONSTRAINT [FK_PhotoTag_Tag]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User] FOREIGN KEY([IDUser])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User]
GO
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [FK_Theme_Photo] FOREIGN KEY([IDPhoto])
REFERENCES [dbo].[Photo] ([id])
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [FK_Theme_Photo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Les finitions vont dépendre en fonction du format choisi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Finition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Les formats présentés pour les photos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Format'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Les phots appartenant au vendeur' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Photo'
GO
USE [master]
GO
ALTER DATABASE [KartinaTP] SET  READ_WRITE 
GO
