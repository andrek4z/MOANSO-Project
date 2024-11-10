
-- Creación de la base de datos
CREATE DATABASE MinimarketLogistica_Normalizada;
GO

USE MinimarketLogistica_Normalizada;
GO

-- Tabla de Categorias
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL
);

-- Tabla de Ubicaciones
CREATE TABLE Ubicaciones (
    UbicacionID INT PRIMARY KEY IDENTITY(1,1),
    Ciudad NVARCHAR(50),
    Pais NVARCHAR(50)
);

-- Tabla de Proveedores
CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Telefono NVARCHAR(15),
    Correo NVARCHAR(100),
    UbicacionID INT,
    FOREIGN KEY (UbicacionID) REFERENCES Ubicaciones(UbicacionID)
);

-- Tabla de Productos
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Descripcion NVARCHAR(255),
    Precio DECIMAL(10, 2) NOT NULL,
    StockActual INT NOT NULL,
    CategoriaID INT,
    FechaIngreso DATE DEFAULT GETDATE(),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- Tabla de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY IDENTITY(1,1),
    ProveedorID INT NOT NULL,
    FechaPedido DATE DEFAULT GETDATE(),
    FechaEntrega DATE,
    Estado NVARCHAR(20) DEFAULT 'Pendiente',
    FOREIGN KEY (ProveedorID) REFERENCES Proveedores(ProveedorID)
);

-- Tabla de Detalle de Pedidos
CREATE TABLE DetallePedidos (
    DetalleID INT PRIMARY KEY IDENTITY(1,1),
    PedidoID INT,
    ProductoID INT,
    Cantidad INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

-- Insertar datos en la tabla Categorias
INSERT INTO Categorias (Nombre) VALUES
('Bebidas'),
('Alimentos'),
('Limpieza');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (Nombre, Descripcion, Precio, StockActual, CategoriaID, FechaIngreso) VALUES
('Agua Mineral', 'Botella de agua mineral de 1L', 0.75, 100, 1, '2023-10-01'),
('Cereal', 'Caja de cereal 500g', 2.5, 50, 2, '2023-09-15'),
('Detergente', 'Detergente líquido 1L', 3.0, 30, 3, '2023-10-10');

-- Insertar datos en la tabla Ubicaciones
INSERT INTO Ubicaciones (Ciudad, Pais) VALUES
('Lima', 'Perú'),
('Bogotá', 'Colombia');

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (Nombre, Telefono, Correo, UbicacionID) VALUES
('Proveedor A', '123456789', 'contacto@proveedorea.com', 1),
('Proveedor B', '987654321', 'contacto@proveedorb.com', 2);

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (ProveedorID, FechaPedido, FechaEntrega, Estado) VALUES
(1, '2023-11-01', '2023-11-10', 'Entregado'),
(2, '2023-11-05', NULL, 'Pendiente');

-- Insertar datos en la tabla DetallePedidos
INSERT INTO DetallePedidos (PedidoID, ProductoID, Cantidad) VALUES
(1, 1, 20),
(1, 3, 10),
(2, 2, 15);
