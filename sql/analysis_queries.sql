
--VENTAS TOTALES--

SELECT SUM(total) AS ventas_totales
FROM ventas;

--VENTAS POR CLIENTE--	

SELECT c.nombre, SUM(v.total) AS total_ventas
FROM ventas v
JOIN clientes c ON v.cliente_id = c.cliente_id
GROUP BY c.nombre
ORDER BY total_ventas DESC;

--VENTAS POR CATEGORIA--

SELECT p.categoria, SUM(v.total) AS total_ventas
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY p.categoria;

--TOP PRODUCTOS MAS VENDIDOS--

SELECT p.producto, SUM(v.cantidad) AS unidades_vendidas
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY p.producto
ORDER BY unidades_vendidas DESC;

--KPI: TICKET PROMEDIO--

SELECT AVG(total) AS ticket_promedio
FROM ventas;

--VENTAS MENSUALES--

SELECT 
    YEAR(fecha) AS anio,
    MONTH(fecha) AS mes,
    SUM(total) AS ventas_mensuales
FROM ventas
GROUP BY YEAR(fecha), MONTH(fecha)
ORDER BY anio, mes;






