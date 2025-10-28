use optica;

#####   SENTENCIES SQL   #####

-- Mostrem la quantitat de compres que ha fet X client --

SELECT count(*) FROM Venta
WHERE idClient = 2;

 -- Mostrem les  diferents ulleres que ha venut un empleat durant un any --
 SELECT m.nom FROM DetallVenta d
 INNER JOIN Venta v on d.idVenta = v.id
 INNER JOIN Ulleres u on d.idUllera = u.id
 INNER JOIN Marca m on u.idMarca = m.id
 WHERE v.idEmpleat = 1 AND YEAR (v.venta_Data) = 2025;
 
 -- Mostrem els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica --
 
 SELECT p.nom FROM Proveidors p
 JOIN Marca m on  m.idProveidor = p.id
 JOIN Ulleres u on u.idMarca = m.id
 JOIN DetallVenta d on d.idUllera = u.id
 





