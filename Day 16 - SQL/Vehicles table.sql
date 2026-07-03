-- create a database for a parking lot 

CREATE TABLE Vehicles (
	id INT PRIMARY KEY,
	make_model VARCHAR(100),
	wheels INT DEFAULT 4,
	doors INT DEFAULT 4,
	type VARCHAR(100)
);

SELECT *
FROM Vehicles;

SELECT id, make_model, type
FROM Vehicles;

INSERT INTO
Vehicles(id, make_model, wheels, doors, type) VALUES
(1, 'Ford Focus', 4, 4, 'Sedan'),
(2, 'Tesla Roadster', 4, 2, 'Sports'),
(3, 'Kawasaki Ninja', 2, 0, 'Motorcycle'),
(4, 'Mclaren Formula 1', 4, 0, 'Race'),
(5, 'Tesla S', 4, 4, 'Sedan');

INSERT INTO
Vehicles(id, make_model, doors, wheels) VALUES
(6, 'Kawasaki S', 0, 2);

INSERT INTO
Vehicles(id, make_model, doors, wheels, type) VALUES
(7, 'Honda Civic R', 2, 4, 'Sedan');

UPDATE Vehicles
SET type = 'Sports'
WHERE make_model = 'Kawasaki S';

INSERT INTO
Vehicles(id, make_model, doors, wheels, type) VALUES
(8, 'Porche', 2, 4, 'Sports');

DELETE FROM Vehicles
WHERE id = 8;

DROP TABLE IF EXISTS Alya_test;

INSERT INTO
vehicles(id, make_model, type) VALUES
(9, 'Proton Saga', 'Sedan');

SELECT * FROM Vehicles;