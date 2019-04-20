-- 19
-- top_2009_agent.sql
-- Which sales agent made the most in sales in 2009? HINT: MAX

USE Chinook
SELECT TOP 1 SUM(i.Total) AS TotalSales, e.FirstName + ' ' + e.LastName AS SalesRep
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON c.SupportRepId = e.EmployeeId
WHERE YEAR(i.InvoiceDate) = '2009'
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales DESC