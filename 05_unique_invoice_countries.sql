-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

USE Chinook
SELECT DISTINCT i.BillingCountry
FROM Invoice i
