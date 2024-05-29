USE  Acciones;

CREATE DATABASE IF NOT EXISTS Acciones;

CREATE TABLE EmpresasAcciones (
    simbolo VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(255),
    pais VARCHAR(100),
    precio DECIMAL(20, 2),
    subida_bajada VARCHAR(20),
);



CREATE TABLE AccionesHistoricas (
    id SERIAL PRIMARY KEY,
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




-- Insertando datos históricos para Apple Inc. (AAPL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AAPL', '2023-05-01', 170.50),
('AAPL', '2023-05-02', 172.34),
('AAPL', '2023-05-03', 173.20),
('AAPL', '2023-05-04', 171.90),
('AAPL', '2023-05-05', 172.00);

-- Insertando datos históricos para Alphabet Inc. (GOOG)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GOOG', '2023-05-01', 2450.00),
('GOOG', '2023-05-02', 2432.45),
('GOOG', '2023-05-03', 2420.30),
('GOOG', '2023-05-04', 2405.00),
('GOOG', '2023-05-05', 2430.50);

-- Insertando datos históricos para Microsoft Corporation (MSFT)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('MSFT', '2023-05-01', 300.50),
('MSFT', '2023-05-02', 305.98),
('MSFT', '2023-05-03', 310.20),
('MSFT', '2023-05-04', 308.00),
('MSFT', '2023-05-05', 306.50);

-- Insertando datos históricos para Amazon.com, Inc. (AMZN)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AMZN', '2023-05-01', 130.50),
('AMZN', '2023-05-02', 129.78),
('AMZN', '2023-05-03', 128.60),
('AMZN', '2023-05-04', 127.40),
('AMZN', '2023-05-05', 128.50);

-- Insertando datos históricos para Tesla, Inc. (TSLA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('TSLA', '2023-05-01', 880.00),
('TSLA', '2023-05-02', 889.43),
('TSLA', '2023-05-03', 895.00),
('TSLA', '2023-05-04', 890.50),
('TSLA', '2023-05-05', 892.00);

-- Insertando datos históricos para Alibaba Group Holding Limited (BABA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BABA', '2023-05-01', 250.00),
('BABA', '2023-05-02', 245.67),
('BABA', '2023-05-03', 242.00),
('BABA', '2023-05-04', 240.50),
('BABA', '2023-05-05', 243.00);

-- Insertando datos históricos para Taiwan Semiconductor Manufacturing Company (TSMC)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('TSMC', '2023-05-01', 670.00),
('TSMC', '2023-05-02', 678.32),
('TSMC', '2023-05-03', 680.50),
('TSMC', '2023-05-04', 675.00),
('TSMC', '2023-05-05', 677.50);

-- Insertando datos históricos para NVIDIA Corporation (NVDA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('NVDA', '2023-05-01', 590.00),
('NVDA', '2023-05-02', 589.34),
('NVDA', '2023-05-03', 587.00),
('NVDA', '2023-05-04', 585.50),
('NVDA', '2023-05-05', 588.00);

-- Insertando datos históricos para Berkshire Hathaway Inc. (BRK.A)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BRK.A', '2023-05-01', 460000.00),
('BRK.A', '2023-05-02', 461234.56),
('BRK.A', '2023-05-03', 462000.00),
('BRK.A', '2023-05-04', 461000.00),
('BRK.A', '2023-05-05', 461500.00);

-- Insertando datos históricos para JPMorgan Chase & Co. (JPM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('JPM', '2023-05-01', 135.00),
('JPM', '2023-05-02', 134.23),
('JPM', '2023-05-03', 133.00),
('JPM', '2023-05-04', 132.50),
('JPM', '2023-05-05', 133.50);

[6:38 p.m., 18/5/2024] O: INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AVV', '2023-05-01', 2340.00),
('AVV', '2023-05-02', 2345.67),
('AVV', '2023-05-03', 2350.00),
('AVV', '2023-05-04', 2348.50),
('AVV', '2023-05-05', 2347.00);

-- Insertando datos históricos para Grupo Éxito S.A. (CORF)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CORF', '2023-05-01', 1230.00),
('CORF', '2023-05-02', 1234.56),
('CORF', '2023-05-03', 1240.00),
('CORF', '2023-05-04', 1235.00),
('CORF', '2023-05-05', 1236.50);

-- Insertando datos históricos para Grupo Sura S.A. (PQD)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('PQD', '2023-05-01', 870.00),
('PQD', '2023-05-02', 876.54),
('PQD', '2023-05-03', 880.00),
('PQD', '2023-05-04', 875.00),
('PQD', '2023-05-05', 877.50);

-- Insertando datos históricos para Bancolombia S.A. (BOV)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BOV', '2023-05-01', 560.00),
('BOV', '2023-05-02', 567.89),
('BOV', '2023-05-03', 570.00),
('BOV', '2023-05-04', 565.00),
('BOV', '2023-05-05', 568.00);

-- Insertando datos históricos para Ecopetrol S.A. (ECOP)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('ECOP', '2023-05-01', 340.00),
('ECOP', '2023-05-02', 345.67),
('ECOP', '2023-05-03', 350.00),
('ECOP', '2023-05-04', 345.00),
('ECOP', '2023-05-05', 347.50);

-- Insertando datos históricos para Centros Eléctricos Colombianos S.A. ESPB (CEL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CEL', '2023-05-01', 230.00),
('CEL', '2023-05-02', 234.56),
('CEL', '2023-05-03', 238.00),
('CEL', '2023-05-04', 233.00),
('CEL', '2023-05-05', 235.50);

-- Insertando datos históricos para Interconexión Eléctrica S.A. ESPB (ISA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('ISA', '2023-05-01', 120.00),
('ISA', '2023-05-02', 123.45),
('ISA', '2023-05-03', 125.00),
('ISA', '2023-05-04', 122.00),
('ISA', '2023-05-05', 124.00);

-- Insertando datos históricos para Empresas Públicas de Medellín E.S.P. (EPM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('EPM', '2023-05-01', 870.00),
('EPM', '2023-05-02', 876.54),
('EPM', '2023-05-03', 880.00),
('EPM', '2023-05-04', 875.00),
('EPM', '2023-05-05', 878.50);

-- Insertando datos históricos para Generadora Colombiana de Energía S.A. (GEB)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GEB', '2023-05-01', 560.00),
('GEB', '2023-05-02', 567.89),
('GEB', '2023-05-03', 570.00),
('GEB', '2023-05-04', 565.00),
('GEB', '2023-05-05', 568.00);

-- Insertando datos históricos para Canacol Energy Ltd. (CNO)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CNO', '2023-05-01', 340.00),
('CNO', '2023-05-02', 345.67),
('CNO', '2023-05-03', 350.00),
('CNO', '2023-05-04', 345.00),
('CNO', '2023-05-05', 347.50);

-- Insertando datos históricos para Cementos Argos S.A. (CCH)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CCH', '2023-05-01', 230.00),
('CCH', '2023-05-02', 234.56),
('CCH', '2023-05-03', 238.00),
('CCH', '2023-05-04', 233.00),
('CCH', '2023-05-05', 235.50);

-- Insertando datos históricos para Grupo Nutresa S.A. (GRIN)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GRIN', '2023-05-01', 120.00),
('GRIN', '2023-05-02', 123.45),
('GRIN', '2023-05-03', 125.00),
('GRIN', '2023-05-04', 122.00),
('GRIN', '2023-05-05', 124.00);

-- Insertando datos históricos para Valorem S.A. (VAL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('VAL', '2023-05-01', 870.00),
('VAL', '2023-05-02', 876.54),
('VAL', '2023-05-03', 880.00),
('VAL', '2023-05-04', 875.00),
('VAL', '2023-05-05', 878.50);

-- Insert…
[6:39 p.m., 18/5/2024] O: ('TELCEL', '2023-05-05', 52.40);

-- Insertando datos históricos para Teléfonos de México, S.A. de C.V. (TELMEX)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('TELMEX', '2023-05-01', 8.70),
('TELMEX', '2023-05-02', 8.76),
('TELMEX', '2023-05-03', 8.80),
('TELMEX', '2023-05-04', 8.75),
('TELMEX', '2023-05-05', 8.78);

-- Insertando datos históricos para Grupo Televisa, S.A.B. de C.V. (GFAM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GFAM', '2023-05-01', 230.00),
('GFAM', '2023-05-02', 234.23),
('GFAM', '2023-05-03', 236.00),
('GFAM', '2023-05-04', 233.50),
('GFAM', '2023-05-05', 235.00);

INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AVV', '2023-05-01', 2340.00),
('AVV', '2023-05-02', 2345.67),
('AVV', '2023-05-03', 2350.00),
('AVV', '2023-05-04', 2348.50),
('AVV', '2023-05-05', 2347.00);

-- Insertando datos históricos para Grupo Éxito S.A. (CORF)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CORF', '2023-05-01', 1230.00),
('CORF', '2023-05-02', 1234.56),
('CORF', '2023-05-03', 1240.00),
('CORF', '2023-05-04', 1235.00),
('CORF', '2023-05-05', 1236.50);

-- Insertando datos históricos para Grupo Sura S.A. (PQD)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('PQD', '2023-05-01', 870.00),
('PQD', '2023-05-02', 876.54),
('PQD', '2023-05-03', 880.00),
('PQD', '2023-05-04', 875.00),
('PQD', '2023-05-05', 877.50);

-- Insertando datos históricos para Bancolombia S.A. (BOV)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BOV', '2023-05-01', 560.00),
('BOV', '2023-05-02', 567.89),
('BOV', '2023-05-03', 570.00),
('BOV', '2023-05-04', 565.00),
('BOV', '2023-05-05', 568.00);

-- Insertando datos históricos para Ecopetrol S.A. (ECOP)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('ECOP', '2023-05-01', 340.00),
('ECOP', '2023-05-02', 345.67),
('ECOP', '2023-05-03', 350.00),
('ECOP', '2023-05-04', 345.00),
('ECOP', '2023-05-05', 347.50);

-- Insertando datos históricos para Centros Eléctricos Colombianos S.A. ESPB (CEL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CEL', '2023-05-01', 230.00),
('CEL', '2023-05-02', 234.56),
('CEL', '2023-05-03', 238.00),
('CEL', '2023-05-04', 233.00),
('CEL', '2023-05-05', 235.50);

-- Insertando datos históricos para Interconexión Eléctrica S.A. ESPB (ISA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('ISA', '2023-05-01', 120.00),
('ISA', '2023-05-02', 123.45),
('ISA', '2023-05-03', 125.00),
('ISA', '2023-05-04', 122.00),
('ISA', '2023-05-05', 124.00);

-- Insertando datos históricos para Empresas Públicas de Medellín E.S.P. (EPM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('EPM', '2023-05-01', 870.00),
('EPM', '2023-05-02', 876.54),
('EPM', '2023-05-03', 880.00),
('EPM', '2023-05-04', 875.00),
('EPM', '2023-05-05', 878.50);

-- Insertando datos históricos para Generadora Colombiana de Energía S.A. (GEB)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GEB', '2023-05-01', 560.00),
('GEB', '2023-05-02', 567.89),
('GEB', '2023-05-03', 570.00),
('GEB', '2023-05-04', 565.00),
('GEB', '2023-05-05', 568.00);

-- Insertando datos históricos para Canacol Energy Ltd. (CNO)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CNO', '2023-05-01', 340.00),
('CNO', '2023-05-02', 345.67),
('CNO', '2023-05-03', 350.00),
('CNO', '2023-05-04', 345.00),
('CNO', '2023-05-05', 347.50);

-- Insertando datos históricos para Cementos Argos S.A. (CCH)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('CCH', '2023-05-01', 230.00),
('CCH', '2023-05-02', 234.56),
('CCH', '2023-05-03', 238.00),
('CCH', '2023-05-04', 233.00),
('CCH', '2023-05-05', 235.50);

-- Insertando datos históricos para Grupo Nutresa S.A. (GRIN)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GRIN', '2023-05-01', 120.00),
('GRIN', '2023-05-02', 123.45),
('GRIN', '2023-05-03', 125.00),
('GRIN', '2023-05-04', 122.00),
('GRIN', '2023-05-05', 124.00);

-- Insertando datos históricos para Valorem S.A. (VAL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('VAL', '2023-05-01', 870.00),
('VAL', '2023-05-02', 876.54),
('VAL', '2023-05-03', 880.00),
('VAL', '2023-05-04', 875.00),
('VAL', '2023-05-05', 878.50);

-- Insertando datos históricos para Constructora Bolívar S.A. (PAC)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('PAC', '2023-05-01', 560.00),
('PAC', '2023-05-02', 567.89),
('PAC', '2023-05-03', 570.00),
('PAC', '2023-05-04', 565.00),
('PAC', '2023-05-05', 568.00);

-- Insertando datos históricos para Constructora Carlos Alberto Uribe S.A. (BIM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BIM', '2023-05-01', 340.00),
('BIM', '2023-05-02', 345.67),
('BIM', '2023-05-03', 350.00),
('BIM', '2023-05-04', 345.00),
('BIM', '2023-05-05', 347.50);

-- Insertando datos históricos para América Móvil, S.A.B. de C.V. (AMX)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AMX', '2023-05-01', 17.00),
('AMX', '2023-05-02', 17.45),
('AMX', '2023-05-03', 17.60),
('AMX', '2023-05-04', 17.30),
('AMX', '2023-05-05', 17.50);

-- Insertando datos históricos para Telecomunicaciones Celulares del Noroeste, S.A. de C.V. (TELCEL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('TELCEL', '2023-05-01', 52.00),
('TELCEL', '2023-05-02', 52.34),
('TELCEL', '2023-05-03', 52.50),
('TELCEL', '2023-05-04', 52.20),
('TELCEL', '2023-05-05', 52.40);

INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('TELMEX', '2023-05-01', 8.70),
('TELMEX', '2023-05-02', 8.76),
('TELMEX', '2023-05-03', 8.80),
('TELMEX', '2023-05-04', 8.75),
('TELMEX', '2023-05-05', 8.78);

-- Insertando datos históricos para Grupo Televisa, S.A.B. de C.V. (GFAM)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GFAM', '2023-05-01', 230.00),
('GFAM', '2023-05-02', 234.23),
('GFAM', '2023-05-03', 236.00),
('GFAM', '2023-05-04', 233.50),
('GFAM', '2023-05-05', 235.00);

-- Insertando datos históricos para Alsea, S.A.B. de C.V. (ALSE)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('ALSE', '2023-05-01', 44.00),
('ALSE', '2023-05-02', 45.67),
('ALSE', '2023-05-03', 46.00),
('ALSE', '2023-05-04', 45.50),
('ALSE', '2023-05-05', 45.80);

-- Insertando datos históricos para Walmart de México, S.A.B. de C.V. (WALMEX)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('WALMEX', '2023-05-01', 133.00),
('WALMEX', '2023-05-02', 134.56),
('WALMEX', '2023-05-03', 135.00),
('WALMEX', '2023-05-04', 134.00),
('WALMEX', '2023-05-05', 134.50);

-- Insertando datos históricos para Soriana, S.A.B. de C.V. (SORL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('SORL', '2023-05-01', 33.00),
('SORL', '2023-05-02', 34.23),
('SORL', '2023-05-03', 34.50),
('SORL', '2023-05-04', 34.00),
('SORL', '2023-05-05', 34.20);

-- Insertando datos históricos para Grupo Coppel, S.A.B. de C.V. (LIVEPOL)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('LIVEPOL', '2023-05-01', 120.00),
('LIVEPOL', '2023-05-02', 123.45),
('LIVEPOL', '2023-05-03', 125.00),
('LIVEPOL', '2023-05-04', 122.50),
('LIVEPOL', '2023-05-05', 123.50);

-- Insertando datos históricos para Fomento Económico Mexicano, S.A.B. de C.V. (FEMSA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('FEMSA', '2023-05-01', 140.00),
('FEMSA', '2023-05-02', 145.67),
('FEMSA', '2023-05-03', 147.00),
('FEMSA', '2023-05-04', 144.00),
('FEMSA', '2023-05-05', 145.50);

-- Insertando datos históricos para Grupo Financiero Banorte, S.A.B. de C.V. (GFBanorte)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('GFBanorte', '2023-05-01', 22.00),
('GFBanorte', '2023-05-02', 23.45),
('GFBanorte', '2023-05-03', 24.00),
('GFBanorte', '2023-05-04', 23.00),
('GFBanorte', '2023-05-05', 23.50);

-- Insertando datos históricos para BBVA México, S.A., Institución de Banca Múltiple (BBVA)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('BBVA', '2023-05-01', 18.00),
('BBVA', '2023-05-02', 18.76),
('BBVA', '2023-05-03', 19.00),
('BBVA', '2023-05-04', 18.50),
('BBVA', '2023-05-05', 18.70);

-- Insertando datos históricos para Santander México, S.A., Institución de Banca Múltiple (SANMEX)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('SANMEX', '2023-05-01', 12.00),
('SANMEX', '2023-05-02', 12.34),
('SANMEX', '2023-05-03', 12.50),
('SANMEX', '2023-05-04', 12.20),
('SANMEX', '2023-05-05', 12.30);

-- Insertando datos históricos para Banco Autofin México, S.A., Institución de Banca Múltiple (AUCH)
INSERT INTO AccionesHistoricas (simbolo_empresa, fecha, precio)
VALUES
('AUCH', '2023-05-01', 14.00),
('AUCH', '2023-05-02', 14.56),
('AUCH', '2023-05-03', 14.80),
('AUCH', '2023-05-04', 14.30),
('AUCH', '2023-05-05', 14.50);
