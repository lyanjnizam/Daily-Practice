SELECT * FROM Vehicles
WHERE type IN ('Sedan', 'Sports', 'Motorcycle');

SELECT * FROM Vehicle_Parking
WHERE vehicleId BETWEEN 2 AND 5;

SELECT * FROM Vehicles
WHERE make_model LIKE '%Tesla%';

SELECT * FROM Vehicles
ORDER BY make_model DESC
LIMIT 3;