-- Provide a query only showing the Customers from Brazil.

USE Chinook
Select *
FROM Customer
WHERE Country = 'Brazil'