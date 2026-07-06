-- 1. write a query that shows the type & max of wheels.
----- sort final list alphabetically by type.
SELECT type, MAX(wheels) AS max_of_wheels
FROM Vehicles
GROUP BY type
ORDER BY type;

-- 2. write a query that counts total of permits issued per parkingzone.
----- order results so the zone with highest count appears top.
SELECT parkingZone, COUNT(*) AS total_permits
FROM Vehicle_Parking
GROUP BY parkingZone
ORDER BY COUNT(*) DESC;

-- 3. write a query that shows vehicleid & total of times parked.
----- use HAVING to only show vehicles that parked 2 or more times.
SELECT vehicleId, COUNT(*) AS times_parked
FROM Vehicle_Parking
GROUP BY vehicleId
HAVING COUNT(*) >= 2;

-- 4. write a query using vehicles table.
----- group data by type.
----- calculate SUM() of doors.
----- only keep groups where total sum of doors strictly greater than 2.
----- sort results so the type with most total doors at top.
SELECT type, SUM(doors) AS total_doors
FROM Vehicles
GROUP BY type
HAVING SUM(doors) > 2
ORDER BY SUM(doors) DESC;