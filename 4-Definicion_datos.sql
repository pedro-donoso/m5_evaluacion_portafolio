-- CREATE: Crear tabla de empleados
CREATE TABLE empleados (
    empleado_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salario DECIMAL(10,2) CHECK (salario > 0),
    fecha_ingreso DATE DEFAULT CURRENT_DATE,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

-- CREATE con restricciones adicionales
CREATE TABLE productos (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    categoria VARCHAR(50),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT precio_positivo CHECK (precio >= 0),
    CONSTRAINT stock_positivo CHECK (stock >= 0)
);

-- ALTER: Agregar columna a tabla existente
ALTER TABLE empleados
ADD COLUMN fecha_nacimiento DATE;

-- ALTER: Modificar tipo de dato
ALTER TABLE empleados
MODIFY COLUMN telefono VARCHAR(30);

-- ALTER: Agregar índice para mejorar búsquedas
CREATE INDEX idx_empleado_email ON empleados(email);

-- DROP: Eliminar tabla
DROP TABLE tabla_temporal;

-- TRUNCATE: Vaciar tabla sin eliminar estructura
TRUNCATE TABLE logs_sistema;