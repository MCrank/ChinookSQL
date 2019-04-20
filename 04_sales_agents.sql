-- Provide a query showing only the Employees who are Sales Agents

USE Chinook
SELECT *
FROM Employee e
WHERE e.Title = 'Sales Support Agent'