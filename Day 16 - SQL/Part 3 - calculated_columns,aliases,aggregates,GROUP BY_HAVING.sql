SELECT wheels, doors, wheels * doors AS product
FROM Vehicles;

SELECT doors / wheels AS div
FROM Vehicles;

ALTER TABLE Vehicles
ADD COLUMN product INT GENERATED ALWAYS AS (wheels * doors) STORED;

ALTER TABLE Vehicles
DROP COLUMN product;

SELECT
COUNT(*) AS total_vehicles,
SUM(doors) AS total_doors,
SUM(wheels) AS total_wheels,
ROUND(AVG(wheels), 2),
MIN(wheels),
MAX(wheels)
FROM Vehicles;

SELECT parkingZone, COUNT(*) AS total_permits
FROM Vehicle_Parking
GROUP BY parkingZone;

SELECT
	issueDate,
	COUNT(*) AS total_permits,
	COUNT(vehicleId) as total_ids
FROM Vehicle_Parking
GROUP BY issueDate;

SELECT vehicleId, parkingZone, COUNT(*) AS times_parked
FROM Vehicle_Parking
GROUP BY vehicleId, parkingZone
ORDER BY vehicleId;

SELECT COUNT(type) AS vehicle_types
FROM Vehicles;

SELECT type, COUNT(*) AS total_vehicles
FROM Vehicles
GROUP BY type;

SELECT type, COUNT(*) AS total
FROM Vehicles
GROUP BY type
HAVING COUNT(*) > 2;