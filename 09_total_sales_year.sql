--What are the respective total sales for each of those years?

USE Chinook
SELECT SUM(i.Total) as TotalSalesYear, YEAR(i.InvoiceDate) AS Year
FROM Invoice as i
WHERE YEAR(i.InvoiceDate) = '2009' OR YEAR(i.InvoiceDate) = '2011'
GROUP BY YEAR(i.InvoiceDate)

