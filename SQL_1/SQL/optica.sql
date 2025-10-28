## Creació de Taules ###
Create TABLE if not exists Proveidors(
    id INT PRIMARY KEY, 
    Nom VARCHAR(100) NOT NULL,
    Carrer VARCHAR(100) NOT NULL,
    Numero INT NOT NULL,
    Pis INT NOT NULL,
    Porta INT NOT NULL,
    Ciutat VARCHAR(100) NOT NULL,
    CodiPostal VARCHAR(10) NOT NULL,
    Pais VARCHAR(100) NOT NULL,
    Tlf VARCHAR(15),
    fax VARCHAR(15),
    NIF VARCHAR(20) NOT NULL
);

Create TABLE if not exists Marca(
	id INT PRIMARY KEY,
    idProveidor INT,
	nom VARCHAR(20),
	FOREIGN KEY (idProveidor) REFERENCES Proveidors(id)
);

Create TABLE if not exists Ulleres(
    id INT PRIMARY KEY,
	idMarca INT,
    Graduacio_Dreta FLOAT,
    Graduacio_Esquerra FLOAT,
    Montura ENUM(
        'Flotant',
        'Pasta',
        'Metàl·lica') NOT NULL,
    ColorMontura VARCHAR(50),
    ColorVidre VARCHAR(50),
    Preu INT NOT NULL,
    FOREIGN KEY (idMarca) REFERENCES Marca(id)

);




Create TABLE if not exists Clients (
    id INT PRIMARY KEY,
	idClientRecomanat INT,
    Nom VARCHAR(100) NOT NULL,
    CodiPostal VARCHAR(255),
    Tlf VARCHAR(15),
    Mail VARCHAR(100),
	FOREIGN KEY (idClientRecomanat) REFERENCES Clients(id)

);


Create TABLE if not exists Empleat(
	id INT PRIMARY KEY,
    Nom VARCHAR(30)
);

Create TABLE if not exists Venta(
    id INT PRIMARY KEY,
    idClient INT,
    idEmpleat INT,
    venta_Data DATE NOT NULL,
	FOREIGN KEY( idEmpleat) REFERENCES Empleat(id),
	FOREIGN KEY( idClient) REFERENCES Clients(id)
);



Create TABLE if not exists DetallVenta(
id INT PRIMARY KEY,
idVenta INT,
idUllera INT,
quantitat INT,
preu INT,
FOREIGN KEY (idVenta) REFERENCES Venta(id),
FOREIGN KEY (idUllera) REFERENCES Ulleres(id)

);



##### Insertem valors als camps corresponents #####

-- PROVEÏDORS --
INSERT INTO Proveidors (id, Nom, Carrer, Numero, Pis, Porta, Ciutat, CodiPostal, Pais, Tlf, Fax, NIF)
VALUES
(1, 'VisionPro S.L.', 'Carrer Major', 10, 2, 1, 'Barcelona', '08001', 'Espanya', '931234567', '931234568', 'B12345678'),
(2, 'LentesGlobal', 'Avinguda del Mar', 25, 1, 3, 'València', '46001', 'Espanya', '961234567', NULL, 'B87654321'),
(3, 'OpticaPlus', 'Carrer Sant Joan', 5, 3, 2, 'Girona', '17001', 'Espanya', '972123456', '972123457', 'B23456789'),
(4, 'LentsBarcelona', 'Gran Via', 100, 1, 1, 'Barcelona', '08010', 'Espanya', '934567890', NULL, 'B34567890');

-- MARCA --
INSERT INTO Marca (id, idProveidor, Nom)
VALUES
(1, 1, 'Ray-Ban'),
(2, 2, 'Oakley'),
(3, 3, 'Gucci'),
(4, 4, 'Prada');

-- ULLERES --
INSERT INTO Ulleres (id, idMarca, Graduacio_Dreta, Graduacio_Esquerra, Montura, ColorMontura, ColorVidre, Preu)
VALUES
(1, 1, 1.25, 1.00, 'Pasta', 'Negre', 'Transparent', 120.00),
(2, 1, 0.00, 0.00, 'Flotant', 'Marró', 'Blau', 95.50),
(3, 2, -1.50, -1.25, 'Metàl·lica', 'Plata', 'Verd', 110.75),
(4, 3, 0.50, 0.50, 'Pasta', 'Beix', 'Transparent', 150.00),
(5, 4, -2.00, -1.75, 'Flotant', 'Negre', 'Groc', 200.00);

-- CLIENTS --
INSERT INTO Clients (id, idClientRecomanat, Nom, CodiPostal, Tlf, Mail)
VALUES
(1, NULL, 'Anna Puig', '08012', '600111222', 'anna.puig@email.com'),
(2, 1, 'Marc Soler', '08025', '600333444', 'marc.soler@email.com'),
(3, NULL, 'Laura Ferrer', '17002', '600555666', 'laura.ferrer@email.com'),
(4, 2, 'Joan Puig', '08018', '600777888', 'joan.puig@email.com');

-- EMPLEAT --
INSERT INTO Empleat (id, Nom)
VALUES
(1, 'Carles Torres'),
(2, 'Marta López');

-- VENTA --
INSERT INTO Venta (id, idClient, idEmpleat, Data)
VALUES
(1, 2, 1, '2025-10-27'),
(2, 1, 1, '2025-10-26'),
(3, 2, 1, '2025-10-29'),
(4, 1, 2, '2025-10-22'),
(5, 3, 2, '2025-10-28');

-- DETALL VENTA --
INSERT INTO DetallVenta (id, idVenta, idUllera, Quantitat, Preu)
VALUES
(1, 1, 1, 1, 120.00),
(2, 1, 3, 1, 110.75),
(3, 2, 2, 2, 95.50),
(4, 3, 4, 1, 150.00),
(5, 4, 5, 1, 200.00),
(6, 5, 1, 1, 120.00);










