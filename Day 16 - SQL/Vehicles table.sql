-- create a database for a parking lot 

CREATE TABLE Vehicles (
	ID INT PRIMARY KEY,
	Make_Model VARCHAR(100),
	Wheels INT DEFAULT 4,
	Doors INT DEFAULT 4,
	Type VARCHAR(100)
);

SELECT *
FROM Vehicles;

SELECT id, make_model, type
FROM vehicles;

INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(1, 'Ford Focus', 4, 4, 'Sedan'),
(2, 'Tesla Roadster', 4, 2, 'Sports'),
(3, 'Kawasaki Ninja', 2, 0, 'Motorcycle'),
(4, 'Mclaren Formula 1', 4, 0, 'Race'),
(5, 'Tesla S', 4, 4, 'Sedan');

INSERT INTO
vehicles(id, make_model, doors, wheels) VALUES
(6, 'Kawasaki S', 0, 2);

INSERT INTO
vehicles(id, make_model, doors, wheels, type) VALUES
(7, 'Honda Civic R', 2, 4, 'Sedan');

UPDATE vehicles
SET type = 'Sports'
WHERE make_model = 'Kawasaki S';

INSERT INTO
vehicles(id, make_model, doors, wheels, type) VALUES
(8, 'Porche', 2, 4, 'Sports');

DELETE FROM vehicles
WHERE id = 8;

DROP TABLE IF EXISTS alya_test;

SELECT * FROM vehicles;