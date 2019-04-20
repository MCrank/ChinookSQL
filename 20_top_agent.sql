-- 20
-- top_agent.sql
-- Which sales agent made the most in sales over all?

USE Chinook
SELECT TOP 1 SUM(i.Total) AS TotalSales, e.FirstName + ' ' + e.LastName AS SalesRep
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales DESC