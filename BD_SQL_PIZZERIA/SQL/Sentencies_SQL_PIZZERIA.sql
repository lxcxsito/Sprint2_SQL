use pizzeria;

-- Llista quants productes de tipus “Begudes” shan venut en una determinada localitat.

SELECT COUNT(*) from Producte p
JOIN Detall_Comanda dc 	on p.id = dc.idProducte
JOIN Comanda c on c.id = dc.idComanda
JOIN Client cl on cl.id = c.idClient
WHERE p.Tipus = 'Beguda' && cl.localitat = "Barcelona";


-- Llista quantes comandes ha efectuat un determinat empleat/da. --

-- Ruben entenc que la comanda la fa un empleat/caixer :) 

Select Count(*) AS Comandes_Realitzades from Empleat e 
Join Comanda c on c.idEmpleat = e.id
Where e.Rol = 'Caixer' && e.id = 22;




