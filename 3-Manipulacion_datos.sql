-- INSERT: Agregar un nuevo cliente
INSERT INTO clientes (cliente_id, nombre, email, telefono, direccion)
VALUES (201, 'María González', 'maria@email.com', '912345678', 'Av. Principal 123');

-- INSERT múltiple
INSERT INTO clientes (cliente_id, nombre, email) VALUES
(202, 'Juan Pérez', 'juan@email.com'),
(203, 'Ana Silva', 'ana@email.com'),
(204, 'Carlos Ruiz', 'carlos@email.com');

-- UPDATE: Actualizar dirección de un cliente
UPDATE clientes
SET direccion = 'Nueva Calle 456',
    telefono = '987654321'
WHERE cliente_id = 201;

-- UPDATE condicional: Aumentar precios en 10%
UPDATE productos
SET precio = precio * 1.10
WHERE categoria = 'Electrónica';

-- DELETE: Eliminar un pedido cancelado
DELETE FROM pedidos
WHERE pedido_id = 5001 AND estado = 'Cancelado';

-- DELETE con subconsulta: Eliminar pedidos antiguos
DELETE FROM pedidos
WHERE fecha_pedido < '2023-01-01';