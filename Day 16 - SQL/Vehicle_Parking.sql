CREATE TABLE IF NOT EXISTS Vehicle_Parking(
	permitId SERIAL PRIMARY KEY,
	vehicleId INT NOT NULL REFERENCES Vehicles(id),
	parkingZone VARCHAR(10) DEFAULT 'A' CHECK (parkingzone in ('A', 'B', 'C')),
	issueDate DATE DEFAULT CURRENT_DATE,
	issueTime TIME DEFAULT CURRENT_TIME(2),
	checkoutTime TIME DEFAULT CURRENT_TIME(2) + INTERVAL '1 hour'
);

INSERT INTO
Vehicle_Parking(vehicleId) VALUES
(1);
INSERT INTO
Vehicle_Parking(vehicleId) VALUES
(9);
INSERT INTO
Vehicle_Parking(vehicleId) VALUES
(4);
INSERT INTO
Vehicle_Parking(vehicleId) VALUES
(5);

SELECT * FROM Vehicle_Parking;