# Car Dealership Database

This project is a SQL script to create a car dealership database and populate it with initial data. It includes tables for dealerships, vehicles, inventory, sales contracts, and lease contracts.

## Introduction

The purpose of this project is to provide a comprehensive solution for managing a car dealership's operations, including tracking inventory, sales contracts, and lease contracts.

## Database Schema

The database schema consists of the following tables:

- **dealerships**: Stores information about car dealerships such as name, address, and phone number.
- **vehicle**: Contains details about vehicles including VIN, year, make, model, type, color, odometer reading, price, and sold status.
- **inventory**: Tracks which vehicles are available at which dealerships.
- **sales_contracts**: Stores information about vehicle sales contracts.
- **lease_contracts**: Records details of vehicle lease contracts.

## Sample Queries

This project includes sample SQL queries to perform various operations on the database. Here are some examples:

1. **Get all dealerships**: Retrieve a list of all dealerships from the database.
2. **Find all vehicles for a specific dealership**: Retrieve all vehicles available at a particular dealership.
3. **Find a car by VIN**: Search for a vehicle using its Vehicle Identification Number (VIN).
4. **Find the dealership where a certain car is located by VIN**: Determine the dealership where a specific vehicle is currently located.
5. **Find all dealerships that have a certain car type**: Identify all dealerships that have a particular type of car available in their inventory.
6. **Get all sales information for a specific dealer for a specific date range**: Retrieve sales information for a particular dealership within a specified date range.

## Setup Instructions

To set up the database, execute the provided SQL script in your preferred database management system. The script will create the necessary tables and populate them with sample data.

## Queries for Testing

For testing purposes, sample SQL queries have been provided in separate files to verify that the database has been created and populated correctly. Each query corresponds to a specific test case and can be executed individually.

## Contributing

Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request on GitHub.

## License

This project is licensed under the [MIT License](LICENSE).
