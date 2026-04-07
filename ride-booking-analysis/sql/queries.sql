
SELECT * FROM maintable;
SELECT * FROM customers;
SELECT * FROM drivers;
SELECT * FROM vehicles;

SELECT 
m.Booking_ID,
c.Customer_Name,
d.Driver_Name,
v.Vehicle_Type,
m.Fare_Amount
FROM maintable m
JOIN customers c ON m.Customer_ID = c.Customer_ID
JOIN drivers d ON m.Driver_ID = d.Driver_ID
JOIN vehicles v ON m.Vehicle_ID = v.Vehicle_ID
LIMIT 10;

-- Total Revenue
SELECT round(SUM(Fare_Amount),2) AS Total_Revenue
FROM maintable;

-- Total Bookings 
SELECT COUNT(*) AS Total_Bookings
FROM maintable;

-- Revenue by Vehicle Type
SELECT v.Vehicle_Type, SUM(m.Fare_Amount) AS Revenue
FROM maintable m
JOIN vehicles v ON m.Vehicle_ID = v.Vehicle_ID
GROUP BY v.Vehicle_Type
ORDER BY Revenue DESC;

-- Top 10 Customers
SELECT c.Customer_Name, SUM(m.Fare_Amount) AS Total_Spend
FROM maintable m
JOIN customers c ON m.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Spend DESC
LIMIT 10;

-- Top Drivers (By Trips)
SELECT d.Driver_Name, COUNT(*) AS Total_Trips
FROM maintable m
JOIN drivers d ON m.Driver_ID = d.Driver_ID
GROUP BY d.Driver_Name
ORDER BY Total_Trips DESC
LIMIT 10;

-- City-wise Demand
SELECT City, COUNT(*) AS Total_Bookings
FROM maintable
GROUP BY City
ORDER BY Total_Bookings DESC;

-- Payment Method Analysis
SELECT Payment_Type, COUNT(*) AS Usage_Count
FROM maintable
GROUP BY Payment_Type;

-- Cancellation Rate
SELECT 
(COUNT(CASE WHEN Booking_Status='Cancelled' THEN 1 END)*100.0)/COUNT(*) 
AS Cancellation_Rate
FROM maintable;

-- Peak Hours Analysis
SELECT HOUR(Time) AS Hour, COUNT(*) AS Total_Rides
FROM maintable
GROUP BY Hour
ORDER BY Total_Rides DESC;

-- Monthly Trend
SELECT MONTH(Date) AS Month, COUNT(*) AS Total_Rides
FROM maintable
GROUP BY Month
ORDER BY Month;



