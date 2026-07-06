CREATE TABLE IF NOT EXISTS table_A(
	id_A INT PRIMARY KEY,
	x VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS table_B(
	id_B INT PRIMARY KEY,
	y VARCHAR(100)
);

INSERT INTO table_A(id_A, x)
VALUES
(100, 'Ameena'),
(101, 'Areeqa');

INSERT INTO table_B(id_B, y)
VALUES
(101, 'Class 1'),
(102, 'Class 2'),
(103, 'Class 3'),
(104, 'Class 2');

SELECT * FROM table_A;

SELECT * FROM table_B;

SELECT a.id_A, a.x, b.id_B, b.y
FROM table_A a
INNER JOIN table_B b ON a.id_A = b.id_B;

SELECT a.id_A, a.x, b.id_B, b.y
FROM table_A a
LEFT JOIN table_B b ON a.id_A = b.id_B;

SELECT a.id_A, a.x, b.id_B, b.y
FROM table_A a
RIGHT JOIN table_B b ON a.id_A = b.id_B;

SELECT a.id_A, a.x, b.id_B, b.y
FROM table_A a
FULL OUTER JOIN table_B b ON a.id_A = b.id_B;

SELECT v.make_model, vp.parkingZone
FROM Vehicles v
INNER JOIN Vehicle_Parking vp ON v.id = vp.vehicleId
WHERE vp.ParkingZone = 'B';

SELECT v.type, COUNT(vp.permitId) AS permits
FROM Vehicles v
INNER JOIN Vehicle_Parking vp ON v.id = vp.vehicleID
GROUP BY v.type
ORDER BY COUNT(vp.permitId )DESC;