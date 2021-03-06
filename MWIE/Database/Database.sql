USE [master]
GO
/****** Object:  Database [MWIE]    Script Date: 5/24/2020 2:16:58 PM ******/
CREATE DATABASE [MWIE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MWIE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MWIE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MWIE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MWIE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MWIE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MWIE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MWIE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MWIE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MWIE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MWIE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MWIE] SET ARITHABORT OFF 
GO
ALTER DATABASE [MWIE] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MWIE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MWIE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MWIE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MWIE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MWIE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MWIE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MWIE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MWIE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MWIE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MWIE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MWIE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MWIE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MWIE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MWIE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MWIE] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MWIE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MWIE] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MWIE] SET  MULTI_USER 
GO
ALTER DATABASE [MWIE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MWIE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MWIE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MWIE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MWIE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MWIE] SET QUERY_STORE = OFF
GO
USE [MWIE]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/24/2020 2:16:59 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailReceiptExports]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailReceiptExports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[AmountRemaining] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[DrugId] [int] NOT NULL,
	[ReceiptExportId] [int] NULL,
 CONSTRAINT [PK_DetailReceiptExports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailReceiptImports]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailReceiptImports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[DrugId] [int] NOT NULL,
	[ReceiptImportId] [int] NULL,
 CONSTRAINT [PK_DetailReceiptImports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailReceiptLiquidations]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailReceiptLiquidations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[DrugId] [int] NOT NULL,
	[ReceiptLiquidationId] [int] NULL,
 CONSTRAINT [PK_DetailReceiptLiquidations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drugs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
	[Amount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[DateOfManufacture] [datetime2](7) NOT NULL,
	[ExpriryDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProducerId] [int] NULL,
	[GroupDrugId] [int] NULL,
 CONSTRAINT [PK_Drugs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupDrugs]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupDrugs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_GroupDrugs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Sex] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptExports]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptExports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeReceipt] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[IsPay] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserProfileId] [int] NULL,
	[ClientId] [int] NULL,
 CONSTRAINT [PK_ReceiptExports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptImports]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptImports](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeReceipt] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserProfileId] [int] NULL,
 CONSTRAINT [PK_ReceiptImports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptLiquidations]    Script Date: 5/24/2020 2:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptLiquidations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodeReceipt] [nvarchar](max) NULL,
	[DateCreate] [datetime2](7) NOT NULL,
	[TotalPrice] [float] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserProfileId] [int] NULL,
 CONSTRAINT [PK_ReceiptLiquidations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191203045934_MIGRATION', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191216042907_updatemigration', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200215043253_AddClient', N'2.2.6-servicing-10079')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1, N'721d9bbb-4345-4e60-872c-3dd249eb4ee0', N'Role', N'Admin')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (2, N'721d9bbb-4345-4e60-872c-3dd249eb4ee0', N'Role', N'Manager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (3, N'5680f940-bd98-4444-9f7b-6d3c97ed9d11', N'Role', N'Manager')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (4, N'5680f940-bd98-4444-9f7b-6d3c97ed9d11', N'UserProfileId', N'1')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (5, N'5680f940-bd98-4444-9f7b-6d3c97ed9d11', N'FirstName', N'san')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'721d9bbb-4345-4e60-872c-3dd249eb4ee0', N'admin@test.com', N'ADMIN@TEST.COM', N'admin@test.com', N'ADMIN@TEST.COM', 0, N'AQAAAAEAACcQAAAAEE7KWbYr/SMEtT/ds+p8ntcdyspHWyrOZenyF/gWUEv1fTFlvFMAo38G/UiYKncveg==', N'2QBHWDK76RAME5VEJHJAJ476ATJGHHOL', N'6f66e1e4-df9c-4a3a-ab54-7fa2e44f6ecd', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([Id], [Name], [Address], [Email], [Phone], [IsActive]) VALUES (1, N'Nhà thuốc Lan Anh', N'145 Lê quý đôn, Hải Dương', N'lananh@gmail.com', N'0980897984', 1)
INSERT [dbo].[Clients] ([Id], [Name], [Address], [Email], [Phone], [IsActive]) VALUES (2, N'Nhà thuốc Mạnh Tý', N'66 Ngô Quyền, thành phố Huế', N'manhty@gmail.com', N'09808979868', 1)
INSERT [dbo].[Clients] ([Id], [Name], [Address], [Email], [Phone], [IsActive]) VALUES (3, N'Nhà thuốc Tây Nam', N'567 Nguyễn Tất Thành, thành phố Đà Nẵng', N'taynam@gmail.com', N'09808979868', 1)
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[DetailReceiptExports] ON 

INSERT [dbo].[DetailReceiptExports] ([Id], [Amount], [AmountRemaining], [TotalPrice], [DrugId], [ReceiptExportId]) VALUES (1, 9000, 9000, 5850000000, 11, 1)
INSERT [dbo].[DetailReceiptExports] ([Id], [Amount], [AmountRemaining], [TotalPrice], [DrugId], [ReceiptExportId]) VALUES (2, 3, 3, 900000, 37, 2)
INSERT [dbo].[DetailReceiptExports] ([Id], [Amount], [AmountRemaining], [TotalPrice], [DrugId], [ReceiptExportId]) VALUES (3, 10, 10, 890000, 33, 3)
INSERT [dbo].[DetailReceiptExports] ([Id], [Amount], [AmountRemaining], [TotalPrice], [DrugId], [ReceiptExportId]) VALUES (4, 70000, 70000, 6230000000, 5, 4)
INSERT [dbo].[DetailReceiptExports] ([Id], [Amount], [AmountRemaining], [TotalPrice], [DrugId], [ReceiptExportId]) VALUES (5, 110, 110, 5500000, 2, 5)
SET IDENTITY_INSERT [dbo].[DetailReceiptExports] OFF
SET IDENTITY_INSERT [dbo].[DetailReceiptImports] ON 

INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (1, 3, 300000, 31, 1)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (2, 6, 600000, 32, 2)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (3, 10, 890000, 33, 3)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (4, 70, 1960000, 34, 4)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (5, 1, 28000, 35, 5)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (6, 10, 890000, 36, 6)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (7, 3, 900000, 37, 7)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (8, 10, 1000000, 38, 9)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (9, 10, 4100000, 39, 10)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (10, 10, 550000, 40, 11)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (11, 10, 84000, 41, 12)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (12, 10, 490000, 42, 13)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (13, 10, 1260000, 43, 14)
INSERT [dbo].[DetailReceiptImports] ([Id], [Amount], [TotalPrice], [DrugId], [ReceiptImportId]) VALUES (14, 10, 970000, 44, 15)
SET IDENTITY_INSERT [dbo].[DetailReceiptImports] OFF
SET IDENTITY_INSERT [dbo].[Drugs] ON 

INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (1, N'A.T Etoposide inj 100mg/5ml', N'lọ', 4000, 100000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-01T00:00:00.0000000' AS DateTime2), 1, 1, 10)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (2, N'Aceronko 4mg ', N'Viên', 6790, 50000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-02T00:00:00.0000000' AS DateTime2), 1, 1, 9)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (3, N'Acid Folic 5mg  ', N'Viên', 600, 90000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-09-08T00:00:00.0000000' AS DateTime2), 1, 1, 9)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (4, N'Actrapid 100 IU/ml  ', N'Lọ', 560000, 97000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-08T00:00:00.0000000' AS DateTime2), 1, 2, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (5, N'Acyclovir 250mg   ', N'Lọ', 0, 89000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-03T00:00:00.0000000' AS DateTime2), 0, 2, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (6, N'Acyclovir Stada 800mg   ', N'Lọ', 7100, 27000, CAST(N'2016-09-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-27T02:04:00.0000000' AS DateTime2), 1, 2, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (7, N'Adalat LA 30mg ', N'Viên', 723000, 28000, CAST(N'2016-06-06T00:00:00.0000000' AS DateTime2), CAST(N'2020-03-02T00:00:00.0000000' AS DateTime2), 1, 3, 7)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (8, N'Adrenalin 1mg  ', N'Ống', 600000, 45000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2027-11-23T00:00:00.0000000' AS DateTime2), 1, 3, 7)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (9, N'Adrenaline-BFS 1mg/1ml [Epinephrin  ', N'Ống', 950000, 1200000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2030-09-30T00:00:00.0000000' AS DateTime2), 1, 3, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (10, N'Agifuros 40mg', N'Viên', 450000, 1340000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2028-04-21T00:00:00.0000000' AS DateTime2), 1, 4, 6)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (11, N'Airway', N'Cái', 892000, 650000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-06T00:00:00.0000000' AS DateTime2), 1, 4, 6)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (12, N'Aldactone 25mg ', N'Viên', 450000, 300000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2029-08-17T00:00:00.0000000' AS DateTime2), 1, 4, 6)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (13, N'Alkeran 50mg  ', N'Lọ', 78, 600000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2019-12-24T00:00:00.0000000' AS DateTime2), 1, 6, 5)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (14, N'Ampicicilline 1g ', N'Lọ', 24000, 460000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-24T00:00:00.0000000' AS DateTime2), 1, 6, 5)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (15, N'Angut 300mg ', N'VIên', 100560, 800000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-05-12T00:00:00.0000000' AS DateTime2), 1, 6, 5)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (16, N'Angut 300mg  ', N'VIên', 23000, 410000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2017-04-08T00:00:00.0000000' AS DateTime2), 1, 7, 4)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (17, N'Aspirin 81 81mg  ', N'Lọ', 100000, 80000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), 1, 7, 4)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (18, N'Atifolin inj 50mg/5ml  ', N'Lọ', 56000, 97000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-11T00:00:00.0000000' AS DateTime2), 1, 7, 4)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (19, N'Atifolin inj 50mg/5ml  ', N'Lọ', 120000, 23000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-23T00:00:00.0000000' AS DateTime2), 1, 5, 3)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (20, N'Atropin sulfat 0,25mg   ', N'Ống', 345000, 49000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-03T00:00:00.0000000' AS DateTime2), 1, 5, 3)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (21, N'Avelox 400mg/250ml  ', N'Ống', 330000, 55000, CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-04T00:00:00.0000000' AS DateTime2), 1, 5, 3)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (22, N'Baraclude 0,5mg', N'Viên', 10000, 130000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-12-26T00:00:00.0000000' AS DateTime2), 1, 8, 11)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (23, N'Bicebid 200mg', N'Viên', 66000, 34000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2024-11-09T00:00:00.0000000' AS DateTime2), 1, 8, 11)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (24, N'Calci clorid 500mg/5ml', N'Ống', 500, 1000000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2025-09-03T00:00:00.0000000' AS DateTime2), 1, 8, 11)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (25, N'Calci clorid 500mg/5ml', N'Ống', 23000, 10000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-10-15T00:00:00.0000000' AS DateTime2), 1, 9, 2)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (26, N'Calcium Folinat 100mg Injection 10mg/ml', N'Lọ', 4500, 15000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2021-12-02T00:00:00.0000000' AS DateTime2), 1, 9, 2)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (27, N'Folinic 100mg Injection 10mg/ml', N'Lọ', 7000, 8400, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-22T00:00:00.0000000' AS DateTime2), 1, 9, 2)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (28, N'Cammic 500mg', N'Lọ', 4400, 1200000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-09-07T00:00:00.0000000' AS DateTime2), 1, 4, 1)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (29, N'Captopril 25mg', N'Viên', 23000, 126000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-15T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (30, N'Cavafix Certo G14 8cm', N'Cái', 82000, 140000, CAST(N'2016-08-07T00:00:00.0000000' AS DateTime2), CAST(N'2020-11-12T00:00:00.0000000' AS DateTime2), 1, 7, 1)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (31, N'A.T Etoposide inj 100mg/5ml', N'lọ', 3, 100000, CAST(N'2020-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2020-08-14T00:00:00.0000000' AS DateTime2), 1, 1, 10)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (32, N'A.T Etoposide inj 100mg/5ml', N'lọ', 6, 100000, CAST(N'2020-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-17T00:00:00.0000000' AS DateTime2), 1, 1, 10)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (33, N'Acyclovir 250mg   ', N'Lọ', 0, 89000, CAST(N'2020-03-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 0, 2, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (34, N'Adalat LA 30mg ', N'Viên', 70, 28000, CAST(N'2020-04-05T00:00:00.0000000' AS DateTime2), CAST(N'2021-07-25T00:00:00.0000000' AS DateTime2), 1, 3, 7)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (35, N'Adalat LA 30mg ', N'Viên', 1, 28000, CAST(N'2020-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 1, 3, 7)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (36, N'Acyclovir 250mg   ', N'Lọ', 10, 89000, CAST(N'2020-04-08T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-24T00:00:00.0000000' AS DateTime2), 1, 2, 8)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (37, N'Aldactone 25mg ', N'Viên', 0, 300000, CAST(N'2020-03-29T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-02T00:00:00.0000000' AS DateTime2), 0, 4, 6)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (38, N'A.T Etoposide inj 100mg/5ml', N'lọ', 10, 100000, CAST(N'2020-03-31T00:00:00.0000000' AS DateTime2), CAST(N'2020-04-25T00:00:00.0000000' AS DateTime2), 1, 1, 10)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (39, N'Angut 300mg  ', N'VIên', 10, 410000, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-06T00:00:00.0000000' AS DateTime2), 1, 7, 4)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (40, N'Avelox 400mg/250ml  ', N'Ống', 10, 55000, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-06-05T00:00:00.0000000' AS DateTime2), 1, 5, 3)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (41, N'Folinic 100mg Injection 10mg/ml', N'Lọ', 10, 8400, CAST(N'2020-04-28T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-30T00:00:00.0000000' AS DateTime2), 1, 9, 2)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (42, N'Atropin sulfat 0,25mg   ', N'Ống', 10, 49000, CAST(N'2020-04-27T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-29T00:00:00.0000000' AS DateTime2), 1, 5, 3)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (43, N'Captopril 25mg', N'Viên', 10, 126000, CAST(N'2020-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-27T00:00:00.0000000' AS DateTime2), 1, 5, 1)
INSERT [dbo].[Drugs] ([Id], [Name], [Unit], [Amount], [Price], [DateOfManufacture], [ExpriryDate], [IsActive], [ProducerId], [GroupDrugId]) VALUES (44, N'Atifolin inj 50mg/5ml  ', N'Lọ', 10, 97000, CAST(N'2020-05-04T00:00:00.0000000' AS DateTime2), CAST(N'2020-05-29T00:00:00.0000000' AS DateTime2), 1, 7, 4)
SET IDENTITY_INSERT [dbo].[Drugs] OFF
SET IDENTITY_INSERT [dbo].[GroupDrugs] ON 

INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (1, N'Thuốc gây mê', 0)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (2, N'Thuốc trị đau nhức và chăm sóc giảm nhẹ', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (3, N'Thuốc chống dị ứng và phản vệ', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (4, N'Thuốc giải độc và các chất giải độc khác', 0)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (5, N'Thuốc chống co giật', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (6, N'Thuốc chống bệnh truyền nhiễm', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (7, N'Thuốc chữa bệnh đau nửa đầu', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (8, N'Thuốc chống khối u và ức chế miễn dịch', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (9, N'Thuốc chống bệnh Parkinson', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (10, N'Thuốc ảnh hưởng đến máu', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (11, N'Thuốc tim mạch', 1)
INSERT [dbo].[GroupDrugs] ([Id], [Name], [IsActive]) VALUES (12, N'Thuốc da liễu (bôi trên da)', 1)
SET IDENTITY_INSERT [dbo].[GroupDrugs] OFF
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (1, N'Công Ty CP TRAPHACO ', N'09 Trương Thị Minh Khai, Q.1, Tân Bình, TP.HCM', N'0122374747', N'DonngA@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (2, N'Công Ty CP Dược Hậu Giang ', N'09 Trương Thị Minh Khai, Q.1, Tân Bình, TP.HCM', N'0122374747', N'HauGiang@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (3, N'Công Ty CP PYMEPHARCO ', N' 03 Nguyễn Trường Tộ, Q.1, Tân Bình, TP.HCM', N'0122374747', N'Pymehaco@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (4, N'Công Ty CP Xuất Nhập Khẩu Y Tế DOMESCO ', N'09 Nguyễn Ðình Chiểu, Q.1, Tân Bình, TP.HCM', N'0122374747', N'DomeSco@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (5, N'Công Ty CP Dược Phẩm TIMEXPHARM ', N'09 Trần Hưng Ðạo,  TP.HCM', N'0122374747', N'DuocTimePham@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (6, N'Công Ty CP Dược Trang Thiết Bị Y Tế Bình Định', N'09 Nguyễn Huệ,  TP.HCM', N'0122374747', N'BinhDinh@gmail.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (7, N'Công Ty CP Dược Phẩm Hà Tây ', N'09 Nguyễn Văn Bảo, , TP.HCM', N'0122374747', N'DuocHatay@gmai.com', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (8, N'Công Ty CP Dược Phẩm OPC', N'09 Phổ Quang,  TP.HCM', N'0122374747', N'', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (9, N'Công Ty CP Hóa-Dược Phẩm MEKOPHAR', N'09 Đặng Dung, TP.HCM', N'0122374747', N'', 1)
INSERT [dbo].[Producers] ([Id], [Name], [Address], [Phone], [Email], [IsActive]) VALUES (10, N'Công Ty ', N'09 Trương Thị Minh Khai, Q.1, Tân Bình, TP.HCM', N'0122374747', N'', 1)
SET IDENTITY_INSERT [dbo].[Producers] OFF
SET IDENTITY_INSERT [dbo].[Profiles] ON 


SET IDENTITY_INSERT [dbo].[Profiles] OFF
SET IDENTITY_INSERT [dbo].[ReceiptExports] ON 

INSERT [dbo].[ReceiptExports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsPay], [IsActive], [UserProfileId], [ClientId]) VALUES (1, N'SKM003', CAST(N'2020-04-18T20:22:30.0000000' AS DateTime2), 5850000000, 1, 1, 1, 1)
INSERT [dbo].[ReceiptExports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsPay], [IsActive], [UserProfileId], [ClientId]) VALUES (2, N'BFGG3534', CAST(N'2020-04-18T20:23:16.0000000' AS DateTime2), 900000, 1, 1, 1, 2)
INSERT [dbo].[ReceiptExports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsPay], [IsActive], [UserProfileId], [ClientId]) VALUES (3, N'TRT123123', CAST(N'2020-05-01T22:00:11.0000000' AS DateTime2), 890000, 1, 1, 1, 1)
INSERT [dbo].[ReceiptExports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsPay], [IsActive], [UserProfileId], [ClientId]) VALUES (4, N'NBNB23523', CAST(N'2020-05-03T22:00:48.0000000' AS DateTime2), 6230000000, 1, 1, 1, 1)
INSERT [dbo].[ReceiptExports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsPay], [IsActive], [UserProfileId], [ClientId]) VALUES (5, N'TET7547', CAST(N'2020-05-01T22:03:07.0000000' AS DateTime2), 5500000, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[ReceiptExports] OFF
SET IDENTITY_INSERT [dbo].[ReceiptImports] ON 

INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (1, N'A1', CAST(N'2020-03-28T11:21:16.0000000' AS DateTime2), 300000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (2, N'JRJ00001', CAST(N'2020-04-18T20:11:16.0000000' AS DateTime2), 600000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (3, N'JKJ000002', CAST(N'2020-04-01T20:13:35.0000000' AS DateTime2), 890000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (4, N'JKJ000003', CAST(N'2020-04-02T20:15:27.0000000' AS DateTime2), 1960000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (5, N'JKJ00003', CAST(N'2020-04-03T20:16:28.0000000' AS DateTime2), 28000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (6, N'JKJ00004', CAST(N'2020-04-04T20:17:19.0000000' AS DateTime2), 890000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (7, N'JKJ00005', CAST(N'2020-04-18T20:18:34.0000000' AS DateTime2), 900000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (8, N'JKJ00006', CAST(N'2020-04-15T20:19:32.0000000' AS DateTime2), 0, 0, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (9, N'sdwqd', CAST(N'2020-04-18T20:29:19.0000000' AS DateTime2), 1000000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (10, N'NK11231', CAST(N'2020-05-01T21:32:58.0000000' AS DateTime2), 4100000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (11, N'NHTY12141', CAST(N'2020-04-01T21:34:15.0000000' AS DateTime2), 550000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (12, N'EWWE', CAST(N'2020-03-01T21:35:10.0000000' AS DateTime2), 84000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (13, N'QW8518', CAST(N'2020-02-01T21:35:45.0000000' AS DateTime2), 490000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (14, N'XC11231', CAST(N'2020-03-01T21:36:19.0000000' AS DateTime2), 1260000, 1, 1)
INSERT [dbo].[ReceiptImports] ([Id], [CodeReceipt], [DateCreate], [TotalPrice], [IsActive], [UserProfileId]) VALUES (15, N'XCS1231', CAST(N'2020-03-01T21:37:04.0000000' AS DateTime2), 970000, 1, 1)
SET IDENTITY_INSERT [dbo].[ReceiptImports] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptExports_DrugId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptExports_DrugId] ON [dbo].[DetailReceiptExports]
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptExports_ReceiptExportId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptExports_ReceiptExportId] ON [dbo].[DetailReceiptExports]
(
	[ReceiptExportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptImports_DrugId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptImports_DrugId] ON [dbo].[DetailReceiptImports]
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptImports_ReceiptImportId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptImports_ReceiptImportId] ON [dbo].[DetailReceiptImports]
(
	[ReceiptImportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptLiquidations_DrugId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptLiquidations_DrugId] ON [dbo].[DetailReceiptLiquidations]
(
	[DrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DetailReceiptLiquidations_ReceiptLiquidationId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DetailReceiptLiquidations_ReceiptLiquidationId] ON [dbo].[DetailReceiptLiquidations]
(
	[ReceiptLiquidationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Drugs_GroupDrugId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Drugs_GroupDrugId] ON [dbo].[Drugs]
(
	[GroupDrugId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Drugs_ProducerId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Drugs_ProducerId] ON [dbo].[Drugs]
(
	[ProducerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReceiptExports_ClientId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReceiptExports_ClientId] ON [dbo].[ReceiptExports]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReceiptExports_UserProfileId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReceiptExports_UserProfileId] ON [dbo].[ReceiptExports]
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReceiptImports_UserProfileId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReceiptImports_UserProfileId] ON [dbo].[ReceiptImports]
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReceiptLiquidations_UserProfileId]    Script Date: 5/24/2020 2:16:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ReceiptLiquidations_UserProfileId] ON [dbo].[ReceiptLiquidations]
(
	[UserProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DetailReceiptExports]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptExports_Drugs_DrugId] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drugs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailReceiptExports] CHECK CONSTRAINT [FK_DetailReceiptExports_Drugs_DrugId]
GO
ALTER TABLE [dbo].[DetailReceiptExports]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptExports_ReceiptExports_ReceiptExportId] FOREIGN KEY([ReceiptExportId])
REFERENCES [dbo].[ReceiptExports] ([Id])
GO
ALTER TABLE [dbo].[DetailReceiptExports] CHECK CONSTRAINT [FK_DetailReceiptExports_ReceiptExports_ReceiptExportId]
GO
ALTER TABLE [dbo].[DetailReceiptImports]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptImports_Drugs_DrugId] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drugs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailReceiptImports] CHECK CONSTRAINT [FK_DetailReceiptImports_Drugs_DrugId]
GO
ALTER TABLE [dbo].[DetailReceiptImports]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptImports_ReceiptImports_ReceiptImportId] FOREIGN KEY([ReceiptImportId])
REFERENCES [dbo].[ReceiptImports] ([Id])
GO
ALTER TABLE [dbo].[DetailReceiptImports] CHECK CONSTRAINT [FK_DetailReceiptImports_ReceiptImports_ReceiptImportId]
GO
ALTER TABLE [dbo].[DetailReceiptLiquidations]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptLiquidations_Drugs_DrugId] FOREIGN KEY([DrugId])
REFERENCES [dbo].[Drugs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DetailReceiptLiquidations] CHECK CONSTRAINT [FK_DetailReceiptLiquidations_Drugs_DrugId]
GO
ALTER TABLE [dbo].[DetailReceiptLiquidations]  WITH CHECK ADD  CONSTRAINT [FK_DetailReceiptLiquidations_ReceiptLiquidations_ReceiptLiquidationId] FOREIGN KEY([ReceiptLiquidationId])
REFERENCES [dbo].[ReceiptLiquidations] ([Id])
GO
ALTER TABLE [dbo].[DetailReceiptLiquidations] CHECK CONSTRAINT [FK_DetailReceiptLiquidations_ReceiptLiquidations_ReceiptLiquidationId]
GO
ALTER TABLE [dbo].[Drugs]  WITH CHECK ADD  CONSTRAINT [FK_Drugs_GroupDrugs_GroupDrugId] FOREIGN KEY([GroupDrugId])
REFERENCES [dbo].[GroupDrugs] ([Id])
GO
ALTER TABLE [dbo].[Drugs] CHECK CONSTRAINT [FK_Drugs_GroupDrugs_GroupDrugId]
GO
ALTER TABLE [dbo].[Drugs]  WITH CHECK ADD  CONSTRAINT [FK_Drugs_Producers_ProducerId] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producers] ([Id])
GO
ALTER TABLE [dbo].[Drugs] CHECK CONSTRAINT [FK_Drugs_Producers_ProducerId]
GO
ALTER TABLE [dbo].[ReceiptExports]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptExports_Clients_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[ReceiptExports] CHECK CONSTRAINT [FK_ReceiptExports_Clients_ClientId]
GO
ALTER TABLE [dbo].[ReceiptExports]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptExports_Profiles_UserProfileId] FOREIGN KEY([UserProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[ReceiptExports] CHECK CONSTRAINT [FK_ReceiptExports_Profiles_UserProfileId]
GO
ALTER TABLE [dbo].[ReceiptImports]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptImports_Profiles_UserProfileId] FOREIGN KEY([UserProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[ReceiptImports] CHECK CONSTRAINT [FK_ReceiptImports_Profiles_UserProfileId]
GO
ALTER TABLE [dbo].[ReceiptLiquidations]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptLiquidations_Profiles_UserProfileId] FOREIGN KEY([UserProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[ReceiptLiquidations] CHECK CONSTRAINT [FK_ReceiptLiquidations_Profiles_UserProfileId]
GO
USE [master]
GO
ALTER DATABASE [MWIE] SET  READ_WRITE 
GO
