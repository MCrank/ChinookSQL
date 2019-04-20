-- Provide a query that includes the purchased track name with each invoice line item.

USE Chinook
SELECT i.*, t.Name AS TrackName
FROM InvoiceLine AS i
JOIN Track AS t ON t.TrackId = i.TrackId
