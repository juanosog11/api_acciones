USE  Acciones;

CREATE DATABASE IF NOT EXISTS Acciones;

CREATE TABLE EmpresasAcciones (
    simbolo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(255),
    pais VARCHAR(100),
    precio DECIMAL(10, 2),
    subida_bajada ENUM('subida', 'bajada')
);



CREATE TABLE AccionesHistoricas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    simbolo_empresa VARCHAR(10),
    fecha DATE,
    precio DECIMAL(10, 2),
    FOREIGN KEY (simbolo_empresa) REFERENCES EmpresasAcciones(simbolo)
);


INSERT INTO EmpresasAcciones (simbolo, nombre, pais, precio, subida_bajada)
VALUES
('AAPL', 'Apple Inc.', 'Estados Unidos', 172.34, 'Subida'),
('GOOG', 'Alphabet Inc. (Google)', 'Estados Unidos', 2432.45, 'Bajada'),
('MSFT', 'Microsoft Corporation', 'Estados Unidos', 305.98, 'Subida'),
('AMZN', 'Amazon.com, Inc.', 'Estados Unidos', 129.78, 'Bajada'),
('TSLA', 'Tesla, Inc.', 'Estados Unidos', 889.43, 'Subida'),
('BABA', 'Alibaba Group Holding Limited', 'China', 245.67, 'Bajada'),
('TSMC', 'Taiwan Semiconductor Manufacturing Company', 'Taiwán', 678.32, 'Subida'),
('NVDA', 'NVIDIA Corporation', 'Estados Unidos', 589.34, 'Bajada'),
('BRK.A', 'Berkshire Hathaway Inc.', 'Estados Unidos', 461234.56, 'Subida'),
('JPM', 'JPMorgan Chase & Co.', 'Estados Unidos', 134.23, 'Bajada'),
('AVV', 'Grupo Nutresa S.A.', 'Colombia', 2345.67, 'Subida'),
('CORF', 'Grupo Éxito S.A.', 'Colombia', 1234.56, 'Bajada'),
('PQD', 'Grupo Sura S.A.', 'Colombia', 876.54, 'Subida'),
('BOV', 'Bancolombia S.A.', 'Colombia', 567.89, 'Bajada'),
('ECOP', 'Ecopetrol S.A.', 'Colombia', 345.67, 'Subida'),
('CEL', 'Centros Eléctricos Colombianos S.A. ESPB', 'Colombia', 234.56, 'Bajada'),
('ISA', 'Interconexión Eléctrica S.A. ESPB', 'Colombia', 123.45, 'Subida'),
('EPM', 'Empresas Públicas de Medellín E.S.P.', 'Colombia', 876.54, 'Bajada'),
('GEB', 'Generadora Colombiana de Energía S.A.', 'Colombia', 567.89, 'Subida'),
('CNO', 'Canacol Energy Ltd.', 'Colombia', 345.67, 'Bajada'),
('CCH', 'Cementos Argos S.A.', 'Colombia', 234.56, 'Subida'),
('GRIN', 'Grupo Nutresa S.A.', 'Colombia', 123.45, 'Bajada'),
('VAL', 'Valorem S.A.', 'Colombia', 876.54, 'Subida'),
('PAC', 'Constructora Bolívar S.A.', 'Colombia', 567.89, 'Bajada'),
('BIM', 'Constructora Carlos Alberto Uribe S.A.', 'Colombia', 345.67, 'Subida'),
('AMX', 'América Móvil, S.A.B. de C.V.', 'México', 17.45, 'Subida'),
('TELCEL', 'Telecomunicaciones Celulares del Noroeste, S.A. de C.V.', 'México', 52.34, 'Bajada'),
('TELMEX', 'Teléfonos de México, S.A. de C.V.', 'México', 8.76, 'Subida'),
('GFAM', 'Grupo Televisa, S.A.B. de C.V.', 'México', 234.23, 'Bajada'),
('ALSE', 'Alsea, S.A.B. de C.V.', 'México', 45.67, 'Subida'),
('WALMEX', 'Walmart de México, S.A.B. de C.V.', 'México', 134.56, 'Bajada'),
('SORL', 'Soriana, S.A.B. de C.V.', 'México', 34.23, 'Subida'),
('LIVEPOL', 'Grupo Coppel, S.A.B. de C.V.', 'México', 123.45, 'Bajada'),
('FEMSA', 'Fomento Económico Mexicano, S.A.B. de C.V.', 'México', 145.67, 'Subida'),
('GFBanorte', 'Grupo Financiero Banorte, S.A.B. de C.V.', 'México', 23.45, 'Bajada'),
('BBVA', 'BBVA México, S.A., Institución de Banca Múltiple', 'México', 18.76, 'Subida'),
('SANMEX', 'Santander México, S.A., Institución de Banca Múltiple', 'México', 12.34, 'Bajada'),
('AUCH', 'Banco Autofin México, S.A., Institución de Banca Múltiple', 'México', 14.56, 'Subida');





