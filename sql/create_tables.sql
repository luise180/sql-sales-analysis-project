CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    segmento VARCHAR(50),
    ciudad VARCHAR(50)
);

CREATE TABLE productos (
    producto_id INT PRIMARY KEY,
    producto VARCHAR(100),
    categoria VARCHAR(50),
    precio DECIMAL(10,2)
);

CREATE TABLE ventas (
    venta_id INT PRIMARY KEY,
    fecha DATE,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
);

