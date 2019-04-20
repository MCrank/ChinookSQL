-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

USE Chinook
SELECT i.Total, c.FirstName + ' ' + c.LastName AS CustomerName, c.Country, e.FirstName + ' ' + e.LastName AS SalesAgent
FROM Customer AS c
JOIN Employee as e ON c.SupportRepId = e.EmployeeId
JOIN Invoice AS i ON c.CustomerId = i.CustomerId