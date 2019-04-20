-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37

USE Chinook
SELECT COUNT(*) as CountOfInvoiceId37, i.InvoiceId
FROM InvoiceLine as i
WHERE i.InvoiceId = '37'
GROUP BY i.InvoiceId