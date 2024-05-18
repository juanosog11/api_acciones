CREATE DATABASE IF NOT EXISTS Acciones;

USE  Acciones;

CREATE TABLE Empresas (
    simbolo VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(255),
    pais VARCHAR(100)
);

CREATE TABLE Acciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    simbolo_empresa VARCHAR(10),
    precio DECIMAL(10, 2),
    subida_bajada ENUM('subida', 'bajada'),
    FOREIGN KEY (simbolo_empresa) REFERENCES Empresas(simbolo)
);

CREATE TABLE DatosHistoricos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    simbolo_empresa VARCHAR(10),
    fecha DATE,
    valor_accion DECIMAL(10, 2),
    FOREIGN KEY (simbolo_empresa) REFERENCES Empresas(simbolo)
);


INSERT INTO Empresas (simbolo, nombre, pais)
VALUES
('AAPL', 'Apple Inc.', 'Estados Unidos'),
('GOOG', 'Alphabet Inc. (Google)', 'Estados Unidos'),
('MSFT', 'Microsoft Corporation', 'Estados Unidos'),
('AMZN', 'Amazon.com, Inc.', 'Estados Unidos'),
('TSLA', 'Tesla, Inc.', 'Estados Unidos'),
('BABA', 'Alibaba Group Holding Limited', 'China'),
('TSMC', 'Taiwan Semiconductor Manufacturing Company', 'Taiwán'),
('NVDA', 'NVIDIA Corporation', 'Estados Unidos'),
('BRK.A', 'Berkshire Hathaway Inc.', 'Estados Unidos'),
('JPM', 'JPMorgan Chase & Co.', 'Estados Unidos'),
('AVV', 'Grupo Nutresa S.A.', 'Colombia'),
('CORF', 'Grupo Éxito S.A.', 'Colombia'),
('PQD', 'Grupo Sura S.A.', 'Colombia'),
('BOV', 'Bancolombia S.A.', 'Colombia'),
('ECOP', 'Ecopetrol S.A.', 'Colombia'),
('CEL', 'Centros Eléctricos Colombianos S.A. ESPB', 'Colombia'),
('ISA', 'Interconexión Eléctrica S.A. ESPB', 'Colombia'),
('EPM', 'Empresas Públicas de Medellín E.S.P.', 'Colombia'),
('GEB', 'Generadora Colombiana de Energía S.A.', 'Colombia'),
('CNO', 'Canacol Energy Ltd.', 'Colombia'),
('CCH', 'Cementos Argos S.A.', 'Colombia'),
('GRIN', 'Grupo Nutresa S.A.', 'Colombia'),
('VAL', 'Valorem S.A.', 'Colombia'),
('PAC', 'Constructora Bolívar S.A.', 'Colombia'),
('BIM', 'Constructora Carlos Alberto Uribe S.A.', 'Colombia'),
('AMX', 'América Móvil, S.A.B. de C.V.', 'México'),
('TELCEL', 'Telecomunicaciones Celulares del Noroeste, S.A. de C.V.', 'México'),
('TELMEX', 'Teléfonos de México, S.A. de C.V.', 'México'),
('GFAM', 'Grupo Televisa, S.A.B. de C.V.', 'México'),
('ALSE', 'Alsea, S.A.B. de C.V.', 'México'),
('WALMEX', 'Walmart de México, S.A.B. de C.V.', 'México'),
('SORL', 'Soriana, S.A.B. de C.V.', 'México'),
('LIVEPOL', 'Grupo Coppel, S.A.B. de C.V.', 'México'),
('FEMSA', 'Fomento Económico Mexicano, S.A.B. de C.V.', 'México'),
('GFBanorte', 'Grupo Financiero Banorte, S.A.B. de C.V.', 'México'),
('BBVA', 'BBVA México, S.A., Institución de Banca Múltiple', 'México'),
('SANMEX', 'Santander México, S.A., Institución de Banca Múltiple', 'México'),
('AUCH', 'Banco Autofin México, S.A., Institución de Banca Múltiple', 'México');



INSERT INTO Acciones (simbolo_empresa, precio, subida_bajada)
VALUES
('AAPL', 172.34, 'Subida'),
('GOOG', 2432.45, 'Bajada'),
('MSFT', 305.98, 'Subida'),
('AMZN', 129.78, 'Bajada'),
('TSLA', 889.43, 'Subida'),
('BABA', 245.67, 'Bajada'),
('TSMC', 678.32, 'Subida'),
('NVDA', 589.34, 'Bajada'),
('BRK.A', 461234.56, 'Subida'),
('JPM', 134.23, 'Bajada'),
('AMX', 17.45, 'Subida'),
('TELCEL', 52.34, 'Bajada'),
('TELMEX', 8.76, 'Subida'),
('GFAM', 234.23, 'Bajada'),
('ALSE', 45.67, 'Subida'),
('WALMEX', 134.56, 'Bajada'),
('SORL', 34.23, 'Subida'),
('LIVEPOL', 123.45, 'Bajada'),
('FEMSA', 145.67, 'Subida'),
('GFBanorte', 23.45, 'Bajada'),
('BBVA', 18.76, 'Subida'),
('SANMEX', 12.34, 'Bajada'),
('AUCH', 14.56, 'Subida'),
('BVL: Buenaventura', 567.89, 'Bajada'),
('BVL: Yanacocha', 345.67, 'Subida'),
('BVL: Cerro Verde', 234.56, 'Bajada'),
('BVL: Antamina', 123.45, 'Subida'),
('BVL: Southern Copper', 876.54, 'Bajada'),
('BVL: Luz del Sur', 145.32, 'Subida'),
('BVL: Enel Generación Perú', 234.56, 'Bajada'),
('BVL: Edelnor', 123.45, 'Subida'),
('BVL: Celepsa', 876.54, 'Bajada'),
('AVV', 2345.67, 'Subida'),
('CORF', 1234.56, 'Bajada'),
('PQD', 876.54, 'Subida'),
('BOV', 567.89, 'Bajada'),
('ECOP', 345.67, 'Subida'),
('CEL', 234.56, 'Bajada'),
('ISA', 123.45, 'Subida'),
('EPM', 876.54, 'Bajada'),
('GEB', 567.89, 'Subida'),
('CNO', 345.67, 'Bajada'),
('CCH', 234.56, 'Subida'),
('GRIN', 123.45, 'Bajada'),
('VAL', 876.54, 'Subida'),
('PAC', 567.89, 'Bajada'),
('BIM', 345.67, 'Subida');

INSERT INTO DatosHistoricos (simbolo_empresa, fecha, valor_accion)
VALUES
('AAPL', '2024-05-18', 171.23),
('AAPL', '2024-05-17', 170.54),
('AAPL', '2024-05-16', 168.98),
('AAPL', '2024-05-15', 167.12),
('AAPL', '2024-05-14', 169.45),
('AAPL', '2024-05-13', 170.32),
('AAPL', '2024-05-10', 168.76),
('AAPL', '2024-05-09', 171.23),
('AAPL', '2024-05-08', 170.45),
('AAPL', '2024-05-07', 169.87);


