CREATE DATABASE ecommerce;
USE ecommerce;

-- Clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(200),
    fecha_registro DATE DEFAULT (CURRENT_DATE)
);

-- Categorias

CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50),
    descripcion TEXT            
);

-- Productos
CREATE TABLE Productos(
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT,
    nombre_categoria VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    stock INT DEFAULT 0,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

-- Pedidos
CREATE TABLE Pedidos(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATE DEFAULT (CURRENT_DATE),
    estado ENUM('Pendiente', 'Pagado', 'Enviado', 'Cancelado') DEFAULT 'Pendiente',
    metodo_pago ENUM('Tarjeta', 'PayPal', 'Trasnferencia') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Detalles del pedido
CREATE TABLE detalles_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Envios
CREATE TABLE envios(
    id_envio INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    direccion_envio VARCHAR(200),
    empresa_envio VARCHAR(200),
    costo_envio DECIMAL(10,2),
    fecha_envio DATE,
    fecha_entrega DATE,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

-- Facturas
CREATE TABLE Facturas(
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    fecha_factura DATE DEFAULT (CURRENT_DATE),
    total DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);
