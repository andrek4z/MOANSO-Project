USE [master]
GO
/****** Object:  Database [MinimarketLogistica_Normalizada]    Script Date: 24/11/2024 02:17:00 ******/
CREATE DATABASE [MinimarketLogistica_Normalizada]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MinimarketLogistica_Normalizada', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MinimarketLogistica_Normalizada.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MinimarketLogistica_Normalizada_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MinimarketLogistica_Normalizada_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MinimarketLogistica_Normalizada].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ARITHABORT OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET RECOVERY FULL 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET  MULTI_USER 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MinimarketLogistica_Normalizada', N'ON'
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET QUERY_STORE = ON
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MinimarketLogistica_Normalizada]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[idCliente] [int] NOT NULL,
	[razonSocial] [varchar](100) NULL,
	[dni] [int] NULL,
	[numero] [int] NULL,
	[correo] [varchar](100) NULL,
	[fecRegCliente] [datetime] NULL,
	[estCliente] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comprobante]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comprobante](
	[idComprobante] [int] NOT NULL,
	[idVenta] [int] NULL,
	[nombreCliente] [varchar](100) NULL,
	[direccion] [varchar](200) NULL,
	[tipoComprobante] [varchar](50) NULL,
	[dni] [bigint] NULL,
	[ruc] [bigint] NULL,
	[fechaEmision] [datetime] NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idComprobante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrden](
	[idDetalleOrden] [int] NOT NULL,
	[idOrden] [varchar](10) NULL,
	[idProducto] [int] NULL,
	[producto] [varchar](100) NULL,
	[cantidad] [int] NULL,
	[precioUnitario] [decimal](18, 2) NULL,
	[subtotal] [decimal](18, 2) NULL,
	[estado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orden]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orden](
	[idOrden] [varchar](10) NOT NULL,
	[fecha] [datetime] NULL,
	[total] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[cantidad] [varchar](50) NULL,
	[precio] [decimal](18, 2) NULL,
	[estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 24/11/2024 02:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[idProveedor] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[telefono] [int] NULL,
	[ruc] [bigint] NULL,
	[direccion] [varchar](200) NULL,
	[fecRegProveedor] [datetime] NULL,
	[estProveedor] [bit] NULL,
 CONSTRAINT [PK__Proveedo__A3FA8E6B84BC32AF] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (1, N'Penelope Sandoval', 35748961, 987654321, N'contactoPenelope@gmail.com', CAST(N'2023-01-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (2, N'Betani Cruz', 87654321, 955488365, N'betani_C@hotmail.com', CAST(N'2023-02-20T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (3, N'Jennifer Nolasco', 56789012, 974185235, N'Jennybeauty@gmail.com', CAST(N'2023-03-10T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (4, N'Jandy Nolasco', 56789012, 954347235, N'JandyFeliz10@gmail.com', CAST(N'2023-04-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (5, N'Augusto Nole', 56789012, 924525235, N'Nolentiendo@gmail.com', CAST(N'2023-05-16T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (6, N'Pedro Infante', 56789012, 934185495, N'PEPEPISTOLA@gmail.com', CAST(N'2023-05-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (1, 1001, N'Marilyn Guzman', N'Calle Uranio 540', N'Factura', NULL, 12345678901, CAST(N'2023-04-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (2, 1002, N'Nicole Del Aguila', N'Calle Uranio 540', N'Boleta', 79945126, NULL, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (3, 1003, N'Lea Guzman', N'Calle Uranio 540', N'Factura', NULL, 12345678902, CAST(N'2023-04-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (4, 1004, N'Alanis Felix', N'Calle Uranio 540', N'Boleta', 75549125, NULL, CAST(N'2023-04-06T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[DetalleOrden] ([idDetalleOrden], [idOrden], [idProducto], [producto], [cantidad], [precioUnitario], [subtotal], [estado]) VALUES (1, N'N001', 101, N'Canchita 1/4', 2, CAST(1.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'Elegido')
INSERT [dbo].[DetalleOrden] ([idDetalleOrden], [idOrden], [idProducto], [producto], [cantidad], [precioUnitario], [subtotal], [estado]) VALUES (2, N'N002', 102, N'Lentejas 1/4', 4, CAST(1.50 AS Decimal(18, 2)), CAST(6.00 AS Decimal(18, 2)), N'Elegido')
GO
INSERT [dbo].[Orden] ([idOrden], [fecha], [total]) VALUES (N'N001', CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Orden] ([idOrden], [fecha], [total]) VALUES (N'N002', CAST(N'2023-05-03T00:00:00.000' AS DateTime), CAST(6.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (101, N'Canchita 1/4', N'10', CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (102, N'Lentejas 1/4', N'20', CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (103, N'Arberja 1/4', N'50', CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (104, N'Chifles', N'12', CAST(1.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (105, N'Miel 500 ml', N'20', CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (106, N'Peine', N'15', CAST(2.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (107, N'Engrampadora', N'5', CAST(22.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (108, N'Cuaderno Justus', N'40', CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (109, N'Cuaderno Stanford', N'10', CAST(9.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (110, N'Cepillo Kolinos', N'10', CAST(2.60 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (111, N'Helado trika', N'20', CAST(1.50 AS Decimal(18, 2)), 1)
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (112, N'Inkacola 500 ml', N'14', CAST(3.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (1, N'Rintisa', 987654321, 12345678901, N'Av. Industrial 789', CAST(N'2023-01-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (2, N'Office Solutions', 979854654, 98765432109, N'Calle Comercial 321', CAST(N'2023-02-15T00:00:00.000' AS DateTime), 1)
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
USE [master]
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET  READ_WRITE 
GO
