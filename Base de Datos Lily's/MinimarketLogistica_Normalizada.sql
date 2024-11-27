USE [master]
GO
/****** Object:  Database [MinimarketLogistica_Normalizada]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[Cliente]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[Comprobante]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[Orden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 27/11/2024 02:35:59 ******/
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
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD FOREIGN KEY([idOrden])
REFERENCES [dbo].[Orden] ([idOrden])
GO
/****** Object:  StoredProcedure [dbo].[spActualizarEstadoDetalle]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spAnularComprobante]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spDeshabilitaCliente]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spDeshabilitaProveedor]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spEditaCliente]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spEditaProveedor]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInhabilitarDetalleOrden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInhabilitarProducto]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertaCliente]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertaProveedor]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertarComprobante]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertarDetalleOrden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spInsertarProducto]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spListaCliente]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spListaProveedor]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spListarComprobantes]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spListarDetalleOrden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spListarProductos]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spModificarDetalleOrden]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spModificarProducto]    Script Date: 27/11/2024 02:35:59 ******/
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
/****** Object:  StoredProcedure [dbo].[spRegistrarOrden]    Script Date: 27/11/2024 02:35:59 ******/
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

