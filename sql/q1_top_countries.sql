-- PURPOSE:
-- Identifies the top five countries with the highest customer counts.
-- Helps reveal geographic concentration and priority markets for sales and marketing.

-- =====================================================
-- QUESTION 1: Which 5 countries have the most customers?
-- =====================================================

SELECT Customers.Country, COUNT(Customers.CustomerID) AS 'Number of Customers'
FROM Customers 
GROUP BY Customers.Country
ORDER BY COUNT(Customers.CustomerID) DESC
LIMIT 5;

/*
INSIGHT:
USA has the highest number of customers (13), followed closely by Germany and France (11 each).
Together, these three countries make up most of our top markets. Brazil (9) and the UK (7) trail behind, 
showing we have a solid but regionally concentrated customer base.


RECOMMENDATION:
Treat the US, Germany and France as core markets. The query counts customers only, so it does not show
how well each market responds; compare orders and sales by country before moving budget to Brazil or the UK.
*/
