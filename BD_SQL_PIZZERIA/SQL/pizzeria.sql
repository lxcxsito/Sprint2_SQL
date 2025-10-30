create schema Pizzeria;
use Pizzeria;

CREATE TABLE IF NOT EXISTS Client (
	id INT PRIMARY KEY,
    Nom VARCHAR(20),
    Cognoms VARCHAR(40),
    Adreça VARCHAR(50),
    Codi_Postal INT,
	Localitat VARCHAR(25),
    Provincia VARCHAR(25),
    Tlf INT
);


CREATE TABLE IF NOT EXISTS Pizza (
	id INT PRIMARY KEY,
    Nom VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS Categoria(
	id INT PRIMARY KEY,
    idPizza INT,
    Nom VARCHAR(20),
    FOREIGN KEY (idPizza) REFERENCES Pizza(id)
);

CREATE TABLE IF NOT EXISTS Producte(
	id INT PRIMARY KEY,
    idCategoria INT, 
    Nom VARCHAR(20),
    Descripcio VARCHAR(100),
    Preu INT,
    Tipus ENUM('Pizza','Hamburguesa','Beguda'),
    Imatge VARCHAR(50), -- RUBEN, LA IMAGEN LA PONGO VARCHAR PORQUE SERIA LA RUTA URL DEL FICHERO  --
	FOREIGN KEY (idCategoria) REFERENCES Categoria(id)
);


CREATE TABLE IF NOT EXISTS Botiga(
	id INT PRIMARY KEY,
    Nom VARCHAR(30),
    Adreça VARCHAR(50),
    Localitat VARCHAR(30),
    Provincia VARCHAR(20),
    Codi_Postal INT
);

CREATE TABLE IF NOT EXISTS Empleat (
	id INT PRIMARY KEY,
    idBotiga INT,
	Nom VARCHAR(20),
    Cognoms VARCHAR(40),
    Tlf VARCHAR(20),
    NIF VARCHAR(20),
    Rol ENUM('Cuiner','Repartidor','Caixer') NOT NULL,
    FOREIGN KEY (idBotiga) REFERENCES Botiga(id)
);


CREATE TABLE IF NOT EXISTS Comanda (
    id INT PRIMARY KEY,
    idClient INT, 
    idBotiga INT, 
    idRepartidor INT,
    Tipus_Entrega ENUM('Domicili','Recollida') NOT NULL,
    Data_Hora DATETIME,
    Data_Hora_Entrega DATETIME,
    Preu_Total DECIMAL(7,2),
    FOREIGN KEY (idClient) REFERENCES Client(id),
    FOREIGN KEY (idBotiga) REFERENCES Botiga(id),
    FOREIGN KEY (idRepartidor) REFERENCES Empleat(id)
);


CREATE TABLE IF NOT EXISTS Detall_Comanda(
	id INT PRIMARY KEY,
    idProducte INT,
    idComanda INT,
    Quantitat INT,
    Preu DECIMAL(6,2),
    FOREIGN KEY (idProducte) REFERENCES Producte(id),
    FOREIGN KEY (idComanda) REFERENCES Comanda(id)
);












