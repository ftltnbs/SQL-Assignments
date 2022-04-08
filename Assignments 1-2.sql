-- 1. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice,
--sorted first by CustomerId (in ascending order), and then by total dollar amount in descending order).
SELECT InvoiceId,CustomerId,total
FROM invoices
ORDER BY CustomerId ASC,CustomerId,total DESC;
-- 2. Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, 
-- but this time sorted first by total dollar amount (in descending order), and then by CustomerId
-- (in ascending order).
SELECT InvoiceId,CustomerId,total 
FROM invoices 
ORDER BY total DESC,CustomerId ASC;
-- 3. Compare the results of these two queries above. How are the results different when you switch 
-- the column you sort on first? (Explain it in your own words.)
-- The output table changed completely when we switched the column. It always sorts based on the 
-- first written column. Then if theare are similar values in that column it sorts 
-- them again based on the second written sort column.
-- 4. Write a query to pull the first 10 rows and all columns from the invoices table that have a 
-- dollar amount of total greater than or equal to 10.
SELECT * 
FROM invoices 
WHERE total &gt;= 10 
LIMIT 10;
-- 5. Write a query to pull the first 5 rows and all columns from the invoices table that have a 
-- dollar amount of total less than 10.
SELECT * 
FROM invoices 
WHERE total &lt; 10 
LIMIT 5;
-- 6. Find all track names that start with 'B' and end with 's'.
SELECT Name
FROM tracks 
WHERE Name LIKE &quot;B%s&quot;;
-- 7. Use the invoices table to find all information regarding invoices whose billing address
--  is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest
--  to oldest.