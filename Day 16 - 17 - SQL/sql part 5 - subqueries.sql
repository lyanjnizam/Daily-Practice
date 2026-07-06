SELECT ROUND(AVG(doors), 2) AS avg_doors
FROM Vehicles;

SELECT make_model, doors
FROM Vehicles
WHERE doors > (
	SELECT ROUND(AVG(doors), 2) AS avg_doors
	FROM Vehicles
);

SELECT v.make_model
FROM Vehicles v
INNER JOIN Vehicle_Parking vp ON v.id = vp.vehicleId
WHERE vp.parkingZone = 'C';

SELECT vehicleId
FROM Vehicle_Parking
WHERE ParkingZone = 'C';

SELECT make_model
FROM Vehicles
WHERE id IN (SELECT vehicleId
	FROM Vehicle_Parking
	WHERE ParkingZone = 'C'
);