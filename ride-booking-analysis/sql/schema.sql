CREATE DATABASE uber_project;
USE uber_project;

CREATE TABLE maintable (
    Booking_ID VARCHAR(50),
    Date DATE,
    Time TIME,
    Customer_ID VARCHAR(50),
    Driver_ID VARCHAR(50),
    Vehicle_ID VARCHAR(50),
    City VARCHAR(50),
    Booking_Status VARCHAR(50),
    Distance_km FLOAT,
    Fare_Amount FLOAT,
    Payment_Type VARCHAR(50)
);

CREATE TABLE customers (
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE drivers (
    Driver_ID VARCHAR(50),
    Driver_Name VARCHAR(100),
    City VARCHAR(50),
    Rating FLOAT
);

CREATE TABLE vehicles (
    Vehicle_ID VARCHAR(50),
    Vehicle_Type VARCHAR(50),
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Fuel_Type VARCHAR(50),
    Seating_Capacity INT
);
