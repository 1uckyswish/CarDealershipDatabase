
DROP DATABASE IF EXISTS dealership;
CREATE DATABASE IF NOT EXISTS dealership;
USE dealership;

CREATE TABLE `dealerships` (
    `dealership_id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100),
    `address` VARCHAR(100),
    `phone` VARCHAR(12)
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
    `sold` VARCHAR(5)
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
