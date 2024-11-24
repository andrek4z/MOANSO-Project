
-- Creación de la base de datos
CREATE DATABASE MinimarketLogistica_Normalizada;
GO

USE MinimarketLogistica_Normalizada;
GO


CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    razonSocial VARCHAR(100),
    dni INT,
    numero INT,
    correo VARCHAR(100),
    fecRegCliente DATETIME,
    estCliente BIT
);

CREATE TABLE Comprobante (
    idComprobante INT PRIMARY KEY,
    idVenta INT,
    nombreCliente VARCHAR(100),
    direccion VARCHAR(200),
    tipoComprobante VARCHAR(50),
    dni INT NULL,
    ruc INT NULL,
    fechaEmision DATETIME,
    estado BIT
);

CREATE TABLE Orden (
    idOrden VARCHAR(10) PRIMARY KEY,
    fecha DATETIME,
    total DECIMAL(18, 2)
);

CREATE TABLE DetalleOrden (
    idDetalleOrden INT PRIMARY KEY,
    idOrden VARCHAR(10),
    idProducto INT,
    producto VARCHAR(100),
    cantidad INT,
    precioUnitario DECIMAL(18, 2),
    subtotal DECIMAL(18, 2),
    estado VARCHAR(50),
    FOREIGN KEY (idOrden) REFERENCES Orden(idOrden)
);

CREATE TABLE Producto (
    idProducto INT PRIMARY KEY,
    nombre VARCHAR(100),
    cantidad VARCHAR(50),
    precio DECIMAL(18, 2),
    estado BIT
);

CREATE TABLE Proveedor (
    idProveedor INT PRIMARY KEY,
    nombre VARCHAR(100),
    telefono INT,
    ruc INT,
    direccion VARCHAR(200),
    fecRegProveedor DATETIME,
    estProveedor BIT
);

