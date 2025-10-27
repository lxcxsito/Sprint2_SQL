## Creació de Taules ###


CREATE TABLE Ulleres(
    UlleraId INT PRIMARY KEY,
    Marca VARCHAR(100) NOT NULL,
    Graduacio_Dreta FLOAT,
    Graduacio_Esquerra FLOAT,
    Montura ENUM(
        'Flotant',
        'Pasta',
        'Metàl·lica') NOT NULL,
    ColorMontura VARCHAR(50),
    ColorVidre VARCHAR(50),
    Preu INT NOT NULL

);

CREATE TABLE Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    CodiPostal VARCHAR(255),
    Tlf VARCHAR(15),
    Mail VARCHAR(100),
    RecomenatPer INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)

);


Create TABLE Proveidors(
    ProveidorID INT PRIMARY KEY, 
    FOREIGN KEY (AdreçaID) REFERENCES Adreça(AdreçaID),
    AdreçaID INT,
    Nom VARCHAR(100) NOT NULL,
    Tlf VARCHAR(15),
    fax VARCHAR(15),
    NIF VARCHAR(20) NOT NULL
);

CREATE TABLE Adreça(
    AdreçaID INT PRIMARY KEY, 
    Carrer VARCHAR(100) NOT NULL,
    Numero INT NOT NULL,
    Pis INT NOT NULL,
    Porta INT NOT NULL,
    Ciutat VARCHAR(100) NOT NULL,
    CodiPostal VARCHAR(10) NOT NULL,
    Pais VARCHAR(100) NOT NULL
);

CREATE TABLE Venta(
    VentaID INT PRIMARY KEY,
    FOREIGN KEY( ClientID) REFERENCES Clients(ClientID),
    ClientID INT,
    FOREIGN KEY( UlleraID) REFERENCES Ulleres(UlleraID),
    UlleraID INT,
    Data DATE NOT NULL
);

CREATE TABLE Empleat(
	EmpleatId INT PRIMARY KEY,
    Nom VARCHAR(30)
);