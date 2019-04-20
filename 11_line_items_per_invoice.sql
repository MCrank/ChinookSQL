-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

USE Chinook
SELECT COUNT(*) as CountOfInvoices, i.InvoiceId
FROM InvoiceLine as i
GROUP BY i.InvoiceId