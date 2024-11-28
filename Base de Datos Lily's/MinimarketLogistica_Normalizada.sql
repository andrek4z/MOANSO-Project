USE [master]
GO
/****** Object:  Database [MinimarketLogistica_Normalizada]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[Comprobante]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[Orden]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 27/11/2024 21:17:00 ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 27/11/2024 21:17:00 ******/
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
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (1, N'Lucas Martínez', 70452319, 901234567, N' lucas.martinez@gmail.com', CAST(N'2023-01-15T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (2, N'Sofía Gómez', 71289456, 912345678, N'sofia.gomez@hotmail.com', CAST(N'2023-02-20T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (3, N'Mateo López', 72345678, 923456789, N'mateo.lopez@gmail.com', CAST(N'2023-03-10T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (4, N'Valentina Torres', 73456789, 934567890, N'valentina.torres@hotmail.com', CAST(N'2023-01-16T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (5, N'Alejandro Ramírez', 74561234, 945678901, N'alejandro.ramirez@gmail.com', CAST(N'2023-02-24T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (6, N'Camila Morales', 75678901, 956789012, N'camila.morales@hotmail.com', CAST(N'2023-03-14T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (7, N'Diego Fernández', 76789012, 967890123, N' diego.fernandez@gmail.com', CAST(N'2023-01-13T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (8, N'Isabella Ruiz', 77890123, 978901234, N'isabella.ruiz@hotmail.com', CAST(N'2023-02-21T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (9, N'Sebastián Herrera', 78901234, 989012345, N' sebastian.herrera@gmail.com', CAST(N'2023-03-12T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (10, N'Emilia Ortega', 79123456, 990123456, N'emilia.ortega@hotmail.com', CAST(N'2023-01-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (11, N'Nicolás Castro', 70234567, 987654321, N'nicolas.castro@gmail.com', CAST(N'2023-02-18T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Cliente] ([idCliente], [razonSocial], [dni], [numero], [correo], [fecRegCliente], [estCliente]) VALUES (12, N'Martina Sánchez', 71345678, 976543210, N' martina.sanchez@hotmail.com', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (1, 1001, N'Carlos Pérez', N'Av. Central 123', N'Factura', NULL, 10023456789, CAST(N'2023-04-01T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (2, 1002, N'Ana Ramírez', N'Calle Cristal 456', N'Boleta', 70123456, NULL, CAST(N'2023-04-05T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (3, 1003, N'Luis González', N'Av. Sol Naciente 789', N'Factura', NULL, 11034567890, CAST(N'2023-04-08T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (4, 1004, N'Mariana Torres', N'Calle Luna 321', N'Boleta', 71234567, NULL, CAST(N'2023-04-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (5, 1005, N'David Herrera', N'Av. Las Flores 567', N'Factura', NULL, 12045678901, CAST(N'2023-04-15T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (6, 1006, N'Lucía Fernández', N'Calle del Sol 111', N'Boleta', 72345678, NULL, CAST(N'2023-04-18T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (7, 1007, N'Andrés Morales', N'Av. Libertad 678', N'Factura', NULL, 13056789012, CAST(N'2023-04-20T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (8, 1008, N'Paula Rojas', N'Calle Estrella 999', N'Boleta', 73456789, NULL, CAST(N'2023-04-22T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (9, 1009, N'Javier Castillo', N'Av. Aurora 456', N'Factura', NULL, 14067890123, CAST(N'2023-04-25T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (10, 1010, N'Sofía Vargas', N'Calle Mar 222', N'Boleta', 74567890, NULL, CAST(N'2023-04-28T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (11, 1011, N'Miguel Soto', N'Av. Norte 333', N'Factura', NULL, 15078901234, CAST(N'2023-04-30T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Comprobante] ([idComprobante], [idVenta], [nombreCliente], [direccion], [tipoComprobante], [dni], [ruc], [fechaEmision], [estado]) VALUES (12, 1012, N'Laura Méndez', N'Calle Sur 444', N'Boleta', 75678901, NULL, CAST(N'2023-05-02T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[DetalleOrden] ([idDetalleOrden], [idOrden], [idProducto], [producto], [cantidad], [precioUnitario], [subtotal], [estado]) VALUES (1, N'N001', 101, N'Inkacola 300ml', 2, CAST(1.50 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), N'Elegido')
GO
INSERT [dbo].[DetalleOrden] ([idDetalleOrden], [idOrden], [idProducto], [producto], [cantidad], [precioUnitario], [subtotal], [estado]) VALUES (2, N'N002', 102, N'Inkacola 500ml', 5, CAST(3.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), N'Elegido')
GO
INSERT [dbo].[Orden] ([idOrden], [fecha], [total]) VALUES (N'N001', CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(3.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Orden] ([idOrden], [fecha], [total]) VALUES (N'N002', CAST(N'2023-05-03T00:00:00.000' AS DateTime), CAST(15.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (101, N'Inkacola 300ml ', N'10', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (102, N'Inkacola 500ml', N'20', CAST(3.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (103, N'Inkacola 1L', N'50', CAST(4.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (104, N'Inkacola 1.5L', N'10', CAST(6.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (105, N'Cocacola 300ml', N'20', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (106, N'Cocacola 500ml', N'50', CAST(3.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (107, N'Cocacola 1L', N'10', CAST(4.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (108, N'Cocacola 1.5L', N'20', CAST(6.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (109, N'Lenteja 1/5', N'50', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (110, N'Arberja 1/5', N'10', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (111, N'Canchita 1/5', N'20', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (112, N'Cepillo Kolinos', N'50', CAST(3.20 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (113, N'Cepillo Colgate', N'10', CAST(2.80 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (114, N'Cepillo OralB', N'20', CAST(2.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (115, N'PH Paracas x 4', N'50', CAST(4.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (116, N'PH Paracas x 2', N'10', CAST(2.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (117, N'PH Elite x 4', N'20', CAST(5.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (118, N'PH Elite x 2', N'50', CAST(2.80 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (119, N'PH Suave x 4', N'10', CAST(4.70 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (120, N'PH Suave x 2', N'20', CAST(2.60 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (121, N'Queso Edam Laive', N'50', CAST(4.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (122, N'Queso Parmesano Laive', N'20', CAST(5.40 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (123, N'Queso Cheddar Laive', N'50', CAST(9.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (124, N'Mantequilla Gloria 100g', N'20', CAST(6.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (125, N'Mantequilla Gloria 200g', N'50', CAST(11.40 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (126, N'Mantequilla Gloria s/s 200g', N'20', CAST(11.60 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (127, N'Galleta Soda GN', N'50', CAST(0.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (128, N'Galleta Soda V', N'20', CAST(1.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (129, N'Galleta Soda San Jorge', N'50', CAST(0.70 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (130, N'Galleta Rellenita', N'20', CAST(0.60 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (131, N'Galleta Rellenita Xl', N'50', CAST(1.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (132, N'Pasta Dental Dento', N'20', CAST(4.50 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Producto] ([idProducto], [nombre], [cantidad], [precio], [estado]) VALUES (133, N'Pasta Dental Kolinos', N'50', CAST(4.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (1, N'Rintisa', 987654321, 11234567890, N'Av. Industrial 789', CAST(N'2023-01-10T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (2, N'Danlac Company', 988874556, 10123456789, N'Calle Comercial 321', CAST(N'2023-02-15T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (3, N'Codigisa S.A', 987444321, 19012345678, N'Av. Abancay 329', CAST(N'2023-01-13T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (4, N'CopyVenta', 999997844, 18001234567, N'Calle Capon 521', CAST(N'2023-02-16T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Proveedor] ([idProveedor], [nombre], [telefono], [ruc], [direccion], [fecRegProveedor], [estProveedor]) VALUES (5, N'Pepsico Company', 923654324, 17090123456, N'Av. Ingenio 199', CAST(N'2023-01-20T00:00:00.000' AS DateTime), 1)
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
/****** Object:  StoredProcedure [dbo].[spActualizarEstadoDetalle]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spActualizarEstadoDetalle]
AS
BEGIN
    SELECT 
	[idDetalleOrden]
    FROM [dbo].[DetalleOrden];
END;
GO
/****** Object:  StoredProcedure [dbo].[spAnularComprobante]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spAnularComprobante]
AS
BEGIN
    SELECT 
	[idComprobante]
    FROM [dbo].[Comprobante];
END;
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaCliente]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaCliente]
AS
BEGIN
    SELECT [idCliente]
    FROM [dbo].[Cliente];
END;
GO
/****** Object:  StoredProcedure [dbo].[spDeshabilitaProveedor]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeshabilitaProveedor]
AS
BEGIN
    SELECT 
	[idProveedor]
    FROM [dbo].[Proveedor];
END;
GO
/****** Object:  StoredProcedure [dbo].[spEditaCliente]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaCliente]
AS
BEGIN
    SELECT [idCliente],
			[razonSocial],
           [dni],
           [numero],
           [correo],
           [fecRegCliente],
		   [estCliente]
    FROM [dbo].[Cliente];
END;
GO
/****** Object:  StoredProcedure [dbo].[spEditaProveedor]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditaProveedor]
AS
BEGIN
    SELECT 
	[idProveedor],[nombre],[telefono],[ruc],[direccion],[fecRegProveedor],[estProveedor]
    FROM [dbo].[Proveedor];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInhabilitarDetalleOrden]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInhabilitarDetalleOrden]
AS
BEGIN
    SELECT 
	[idDetalleOrden]
    FROM [dbo].[DetalleOrden];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInhabilitarProducto]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInhabilitarProducto]
AS
BEGIN
    SELECT 
	[idProducto]
    FROM [dbo].[Producto];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertaCliente]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaCliente]
AS
BEGIN
    SELECT [razonSocial],
           [dni],
           [numero],
           [correo],
           [fecRegCliente],
		   [estCliente]
    FROM [dbo].[Cliente];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertaProveedor]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertaProveedor]
AS
BEGIN
    SELECT 
	[nombre],[telefono],[ruc],[direccion],[fecRegProveedor],[estProveedor]
    FROM [dbo].[Proveedor];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertarComprobante]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarComprobante]
AS
BEGIN
    SELECT 
	[idVenta],[nombreCliente],[direccion],[tipoComprobante],[dni],[ruc],[fechaEmision]
    FROM [dbo].[Comprobante];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertarDetalleOrden]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarDetalleOrden]
AS
BEGIN
    SELECT 
	[idOrden],
	[idProducto],
	[cantidad],
	[precioUnitario],
	[subtotal]
    FROM [dbo].[DetalleOrden];
END;
GO
/****** Object:  StoredProcedure [dbo].[spInsertarProducto]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarProducto]
AS
BEGIN
    SELECT 
	[nombre],[cantidad],[precio],[estado]
    FROM [dbo].[Producto];
END;
GO
/****** Object:  StoredProcedure [dbo].[spListaCliente]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaCliente]
AS
BEGIN
    SELECT [idCliente],
	[razonSocial],[dni],[numero],[correo],[fecRegCliente],[estCliente]
    FROM [dbo].[Cliente];
END;
GO
/****** Object:  StoredProcedure [dbo].[spListaProveedor]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaProveedor]
AS
BEGIN
    SELECT 
	[idProveedor],[nombre],[telefono],[ruc],[direccion],[fecRegProveedor],[estProveedor]
    FROM [dbo].[Proveedor];
END;
GO
/****** Object:  StoredProcedure [dbo].[spListarComprobantes]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarComprobantes]
AS
BEGIN
    SELECT [idComprobante],
	[idVenta],[nombreCliente],[direccion],[tipoComprobante],[dni],[ruc],[fechaEmision],[estado]
    FROM [dbo].[Comprobante];
END;
GO
/****** Object:  StoredProcedure [dbo].[spListarDetalleOrden]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarDetalleOrden]
AS
BEGIN
    SELECT 
	[idDetalleOrden],
	[idOrden],
	[idProducto],
	[producto],
	[cantidad],
	[precioUnitario],
	[subtotal]
    FROM [dbo].[DetalleOrden];
END;
GO
/****** Object:  StoredProcedure [dbo].[spListarProductos]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarProductos]
AS
BEGIN
    -- Selecciona todos los registros de la tabla Producto
    SELECT [idProducto],
           [nombre],
           [cantidad],
           [precio],
           [estado]
    FROM [dbo].[Producto];
END;
GO
/****** Object:  StoredProcedure [dbo].[spModificarDetalleOrden]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarDetalleOrden]
AS
BEGIN
    SELECT 
	[idDetalleOrden],[cantidad],[subtotal]
    FROM [dbo].[DetalleOrden];
END;
GO
/****** Object:  StoredProcedure [dbo].[spModificarProducto]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spModificarProducto]
AS
BEGIN
    SELECT 
	[idProducto],[nombre],[cantidad],[precio]
    FROM [dbo].[Producto];
END;
GO
/****** Object:  StoredProcedure [dbo].[spRegistrarOrden]    Script Date: 27/11/2024 21:17:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spRegistrarOrden]
AS
BEGIN
    SELECT 
	[idOrden],[total]
    FROM [dbo].[Orden];
END;
GO
USE [master]
GO
ALTER DATABASE [MinimarketLogistica_Normalizada] SET  READ_WRITE 
GO

