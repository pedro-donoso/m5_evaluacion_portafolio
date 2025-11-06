-- Tabla CLIENTES
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(200)
);

-- Tabla PEDIDOS (relacionada con CLIENTES)
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha_pedido DATE,
    monto_total DECIMAL(10,2),
    estado VARCHAR(20),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);