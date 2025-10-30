use pizzeria;

INSERT INTO Client (id, Nom, Cognoms, Adreça, Codi_Postal, Localitat, Provincia, Tlf)
VALUES
(1, 'Anna', 'Martínez López', 'Carrer Major 12', 08001, 'Barcelona', 'Barcelona', 612345678),
(2, 'Joan', 'Pérez García', 'Av. de la Pau 45', 46010, 'València', 'València', 698745123),
(3, 'Laura', 'Sánchez Ruiz', 'C/ dels Pins 3', 17002, 'Girona', 'Girona', 677889900),
(4, 'Marc', 'Torres Vidal', 'Passeig de Gràcia 22', 08007, 'Barcelona', 'Barcelona', 689998877),
(5, 'Carla', 'Fernández Soto', 'C/ Nou 17', 43202, 'Reus', 'Tarragona', 645112233);


INSERT INTO Categoria (id, idPizza, Nom)
VALUES
(1, NULL, 'Clàssiques'),
(2, NULL, 'Especials'),
(3, NULL, 'Vegetarianes'),
(4, NULL, 'Temporada'),
(5, NULL, 'Picants');


INSERT INTO Pizza (id, Nom)
VALUES
(1, 'Margarita'),
(2, 'Barbacoa'),
(3, '4 Formatges'),
(4, 'Vegetal'),
(5, 'Diavola');

UPDATE Categoria SET idPizza = 1 WHERE id = 1;
UPDATE Categoria SET idPizza = 2 WHERE id = 2;
UPDATE Categoria SET idPizza = 3 WHERE id = 3;
UPDATE Categoria SET idPizza = 4 WHERE id = 4;
UPDATE Categoria SET idPizza = 5 WHERE id = 5;


INSERT INTO Producte (id, idCategoria, Nom, Descripcio, Preu, Tipus, Imatge)
VALUES
(1, 1, 'Pizza Margarita', 'Tomàquet, mozzarella i alfàbrega fresca', 8.50, 'Pizza', '/img/pizzas/margarita.jpg'),
(2, 2, 'Pizza Barbacoa', 'Carn picada, salsa barbacoa i formatge', 10.00, 'Pizza', '/img/pizzas/barbacoa.jpg'),
(3, 3, 'Pizza 4 Formatges', 'Mozzarella, gorgonzola, parmesà i cheddar', 9.50, 'Pizza', '/img/pizzas/4formatges.jpg'),
(4, 3, 'Hamburguesa Clàssica', 'Carn de vedella, formatge, enciam i tomàquet', 7.00, 'Hamburguesa', '/img/hamburgueses/classica.jpg'),
(5, 3, 'Coca-Cola 33cl', 'Beguda refrescant amb gas', 2.00, 'Beguda', '/img/begudes/cocacola.jpg'),
(6, 3, 'Pepsi-Cola 33cl', 'Beguda refrescant amb gas', 2.00, 'Beguda', '/img/begudes/cocacola.jpg'),
(7, 3, 'Fanta 33cl', 'Beguda refrescant amb gas', 2.00, 'Beguda', '/img/begudes/cocacola.jpg');



INSERT INTO Botiga (id, Nom, Adreça, Localitat, Provincia, Codi_Postal)
VALUES
(1, 'Pizzeria Central', 'C/ Mallorca 123', 'Barcelona', 'Barcelona', 08036),
(2, 'Pizzeria Nord', 'Av. Catalunya 50', 'Girona', 'Girona', 17001),
(3, 'Pizzeria Sud', 'C/ Colom 89', 'Tarragona', 'Tarragona', 43001),
(4, 'Pizzeria Oest', 'Av. Blasco Ibáñez 12', 'València', 'València', 46010),
(5, 'Pizzeria Est', 'C/ Marina 210', 'Barcelona', 'Barcelona', 08013);


INSERT INTO Empleat (id, idBotiga, Nom, Cognoms, Tlf, NIF, Rol)
VALUES
(1, 1, 'Pau', 'Ribas Soler', '611223344', '12345678A', 'Repartidor'),
(2, 1, 'Júlia', 'Moreno Serra', '622334455', '23456789B', 'Caixer'),
(3, 2, 'Oriol', 'Casas Vidal', '633445566', '34567890C', 'Cuiner'),
(4, 3, 'Marta', 'Costa Duran', '644556677', '45678901D', 'Repartidor'),
(5, 4, 'Raül', 'Ferrer Puig', '655667788', '56789012E', 'Caixer');

INSERT INTO Comanda (id, idClient, idBotiga, idEmpleat, Tipus_Entrega, Data_Hora, Data_Hora_Entrega, Preu_Total)
VALUES
(1, 1, 1, 1, 'Domicili', '2025-10-29 19:45:00', '2025-10-29 20:10:00', 20.50),
(2, 22, 2, 3, 'Recollida', '2025-10-28 12:30:00', '2025-10-28 12:45:00', 9.50),
(3, 22, 1, 2, 'Domicili', '2025-10-27 21:15:00', '2025-10-27 21:45:00', 15.00),
(4, 44, 3, 4, 'Recollida', '2025-10-26 13:00:00', '2025-10-26 13:15:00', 8.50),
(5, 55, 4, 5, 'Domicili', '2025-10-25 20:00:00', '2025-10-25 20:25:00', 12.00);


INSERT INTO Detall_Comanda (id, idProducte, idComanda, Quantitat, Preu)
VALUES
(1, 1, 1, 1, 8.50),
(2, 5, 1, 2, 4.00),
(3, 2, 2, 1, 10.00),
(4, 3, 3, 1, 9.50),
(5, 4, 3, 1, 7.00),
(6, 1, 4, 1, 8.50),
(7, 5, 5, 1, 2.00);