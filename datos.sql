-- Insertar clientes
INSERT INTO clientes (nombre, apellido, email, telefono, direccion)
VALUES 
('Juan', 'Pérez', 'juan.perez@email.com', '555-1234', 'Av. Principal 123'),
('María', 'Gómez', 'maria.gomez@email.com', '555-5678', 'Calle Secundaria 45'),
('Luis', 'Martínez', 'luis.mtz@email.com', '555-9012', 'Boulevard Central 99');

-- Insertar categorías
INSERT INTO categorias (nombre_categoria, descripcion)
VALUES 
('Electrónica', 'Dispositivos electrónicos y gadgets'),
('Ropa', 'Prendas de vestir'),
('Libros', 'Libros impresos y digitales');

-- Insertar productos
INSERT INTO productos (nombre_categoria, descripcion, precio, stock, id_categoria)
VALUES
('Smartphone X', 'Teléfono inteligente gama alta', 599.99, 10, 1),
('Auriculares Bluetooth', 'Auriculares inalámbricos con micrófono', 49.99, 25, 1),
('Camiseta Negra', 'Camiseta de algodón unisex', 15.50, 50, 2),
('Pantalón Jeans', 'Jeans azul clásico', 35.00, 40, 2),
('Libro SQL Avanzado', 'Guía completa de SQL', 29.99, 20, 3);

-- Insertar pedidos
INSERT INTO pedidos (id_cliente, estado, metodo_pago)
VALUES
(1, 'Pagado', 'Tarjeta'),
(2, 'Pendiente', 'PayPal'),
(3, 'Pagado', 'Transferencia');

-- Insertar detalles de pedidos
INSERT INTO detalles_pedido (id_pedido, id_producto, cantidad, precio_unitario)
VALUES
(1, 1, 1, 599.99),   -- Juan compra un Smartphone
(1, 2, 2, 49.99),    -- Juan compra 2 Auriculares
(2, 3, 3, 15.50),    -- María compra 3 Camisetas
(3, 5, 1, 29.99);    -- Luis compra 1 Libro SQL

-- Insertar envíos
INSERT INTO envios (id_pedido, direccion_envio, empresa_envio, costo_envio, fecha_envio, fecha_entrega)
VALUES
(1, 'Av. Principal 123', 'DHL', 10.00, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 3 DAY)),
(3, 'Boulevard Central 99', 'FedEx', 15.00, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 5 DAY));

-- Insertar facturas
INSERT INTO facturas (id_pedido, total)
VALUES
(1, 599.99 + (2*49.99) + 10.00),  -- Juan
(3, 29.99 + 15.00);               -- Luis
