CREATE TABLE IF NOT EXISTS Vehicle_Parking(
	permit_id SERIAL PRIMARY KEY,
	vehicle_id INT NOT NULL REFERENCES Vehicles(id),
	parking_zone VARCHAR(10) DEFAULT 'A' CHECK (parking_zone IN ('A', 'B', 'C')),
	issue_date DATE DEFAULT CURRENT_DATE,
	issue_time TIME DEFAULT CURRENT_TIME(2),
	checkout_time TIME DEFAULT CURRENT_TIME(2) + INTERVAL '1 hour'
);

INSERT INTO
Vehicle_Parking(vehicle_id)
VALUES (1);

INSERT INTO
Vehicle_Parking(vehicle_id)
VALUES (9);

INSERT INTO
Vehicle_Parking(vehicle_id)
VALUES (4);

INSERT INTO
Vehicle_Parking(vehicle_id)
VALUES (5);

SELECT *
FROM Vehicle_Parking;