/* USAR LA BD */
USE automoviles_gold;

/* ELIMINACION DE TABLAS */
DROP TABLE IF EXISTS vehiculos;

/* CREACION DE TABLAS */
CREATE TABLE vehiculos(
	matricula VARCHAR(7) PRIMARY KEY,
    marca VARCHAR(255) NOT NULL,
    modelo VARCHAR(255) NOT NULL,
    referencia VARCHAR(255) NOT NULL,
    year INTEGER NOT NULL,
    kilometros LONG NOT NULL,
    size VARCHAR(255) NOT NULL,
    cv INT NOT NULL,
    plazas INT NOT NULL,
    combustible VARCHAR(255) NOT NULL,
    manejo VARCHAR(255) NOT NULL,
    puertas INT NOT NULL,
    descripcion TEXT,
    vendido BOOL DEFAULT FALSE
);

/* INSERCION DE DATOS */
INSERT INTO vehiculos VALUES ('9361GMR', 'SEAT', 'Ibiza', '1.6 16v 105 REFERENCE 5p MY09', 2010, 240000, 'Pequeño', 105, 5, 'Diésel', 'Manual', 5, 'Coche en perfectas condiciones, chapa y pintura impoluta, rótulas de dirección y ruedas recién cambiadas, faros Xenon recién cambiados, originales de la casa y todo a estrenar, ITV pasada recientemente, bajo consumo y precioso con su techo solar.', false);