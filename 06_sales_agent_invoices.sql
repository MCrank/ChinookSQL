-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name

USE Chinook
SELECT e.FirstName + ' ' + e.LastName AS FullName, c.Company, i.*
FROM Customer AS c
JOIN Employee as e ON c.SupportRepId = e.EmployeeId
JOIN Invoice AS i ON c.CustomerId = i.CustomerId