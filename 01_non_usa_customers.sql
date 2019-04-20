-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
 
USE Chinook
SELECT FirstName + ' ' + LastName as FullName, CustomerId, Country
FROM Chinook.dbo.Customer
WHERE Country != 'USA'