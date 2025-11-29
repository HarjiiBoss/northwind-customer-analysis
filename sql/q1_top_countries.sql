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
We should continue investing in the US, Germany, and France since these markets already respond well. 
It’s worth checking what works in these regions and applying the same approach in places like Brazil and the UK.
Also, a retention plan for customers in the top three markets could help us stay competitive.
*/
