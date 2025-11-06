-- 1. Consulta básica: Obtener todos los clientes
SELECT * FROM clientes;

-- 2. Consulta con filtro: Clientes de una ciudad específica
SELECT nombre, email, telefono 
FROM clientes 
WHERE ciudad = 'Santiago';

-- 3. JOIN: Obtener pedidos con información del cliente
SELECT 
    c.nombre AS nombre_cliente,
    p.pedido_id,
    p.fecha_pedido,
    p.monto_total
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id;

-- 4. Pedidos de un cliente específico
SELECT 
    pedido_id,
    fecha_pedido,
    monto_total,
    estado
FROM pedidos
WHERE cliente_id = 101
ORDER BY fecha_pedido DESC;

-- 5. GROUP BY: Total de ventas por cliente
SELECT 
    c.nombre,
    COUNT(p.pedido_id) AS total_pedidos,
    SUM(p.monto_total) AS monto_total
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nombre
HAVING COUNT(p.pedido_id) > 0;