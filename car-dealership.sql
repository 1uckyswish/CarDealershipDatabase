
DROP DATABASE IF EXISTS dealership;
CREATE DATABASE IF NOT EXISTS dealership;
USE dealership;

CREATE TABLE `dealerships` (
    `dealership_id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100),
    `address` VARCHAR(100),
    `phone` VARCHAR(20)
);

CREATE TABLE `vehicle` (
    `vin` INT PRIMARY KEY,
    `year` INT,
    `make` VARCHAR(50),
    `model` VARCHAR(50),
    `type` VARCHAR(50),
    `color` VARCHAR(50),
    `odometer` INT,
    `price` DOUBLE,
    `sold` VARCHAR(3)
);

CREATE TABLE `inventory` (
    `dealership_id` INT,
    `vin` INT,
    PRIMARY KEY (`dealership_id`, `vin`),
    FOREIGN KEY (`dealership_id`) REFERENCES `dealerships` (`dealership_id`),
    FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
);

CREATE TABLE `sales_contracts` (
    `sales_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vin` INT,
    FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
);

CREATE TABLE `lease_contracts` (
    `lease_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `vin` INT,
    FOREIGN KEY (`vin`) REFERENCES `vehicle` (`vin`)
);

INSERT INTO `dealerships`(`name`, `address`, `phone`)
VALUES
	('Hippo Motors', '123 Hippo Ave, Hippo City, HP1234', '555-HIPPO-1234'),
    ('Piggy Motors','456 Piggy Lane, Piglet Town, PG5678','555-OINK-5678'),
    ('Gator Motors','789 Swamp Road, Gatorville, GA9012','555-SNAP-9012');

INSERT INTO `vehicle`(`vin`, `year`, `make`, `model`, `type`, `color`, `odometer`, `price`, `sold`)
VALUES
    (123456, 2022, 'Toyota', 'Camry', 'Sedan', 'Blue', 5000, 25000, 'No'),
    (234567, 2021, 'Honda', 'Civic', 'Sedan', 'Red', 8000, 22000, 'No'),
    (345678, 2020, 'Ford', 'F-150', 'Truck', 'Black', 10000, 35000, 'Yes'),
	(456789, 2023, 'Tesla', 'Model Y', 'SUV', 'White', 2000, 60000, 'No'),
    (567890, 2022, 'Lamborghini', 'Aventador', 'Sports Car', 'Yellow', 100, 300000, 'No'),
    (678901, 2021, 'Porsche', '911', 'Coupe', 'Black', 5000, 100000, 'Yes');

INSERT INTO `inventory`(`dealership_id`, `vin`)
VALUES
(1, 123456),
(1, 234567),
(2, 345678),
(2, 456789),
(3, 567890),
(3, 678901);

INSERT INTO `sales_contracts`(`vin`)
VALUES
	(345678),
    (678901);





