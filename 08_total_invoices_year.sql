--How many Invoices were there in 2009 and 2011?

USE Chinook
SELECT COUNT(*) as InvoiceCount, YEAR(i.InvoiceDate) AS Year
FROM Invoice as i
WHERE YEAR(i.InvoiceDate) = '2009' OR YEAR(i.InvoiceDate) = '2011'
GROUP BY YEAR(i.InvoiceDate)
