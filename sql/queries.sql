-- =====================================================
-- PROJECT: Northwind Database - Customer & Product Analysis
-- AUTHOR: Taofeek Salami
-- DATE: November 2025
-- DATABASE: Northwind (W3Schools)
-- =====================================================

-- BUSINESS CONTEXT:
-- Analyzing customer distribution and product pricing to identify 
-- business opportunities and growth areas.


-- =====================================================
-- DATA QUALITY NOTES
-- =====================================================

-- ISSUE: Text fields contain trailing whitespace (e.g., 'Germany ' not 'Germany')
-- WORKAROUND: All queries include trailing spaces in filter conditions
-- Example: WHERE Country = 'Germany ' (note the space before closing quote)


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


-- =====================================================
-- QUESTION 2: What are the minimum, maximum, and average product prices?
-- =====================================================

SELECT MIN(Products.Price) AS 'Min Price', MAX(Products.Price) AS 'Max Price', AVG(Products.Price) AS 'Average Price'
FROM Products;

/* 
INSIGHT:
Prices range from 10 to 97, with an average around 29. Most products fall near the lower side of this range; only a few items are truly expensive. 
This shows the catalog leans toward budget and mid-priced products.


RECOMMENDATION:
Review the highest-priced items to confirm their pricing makes sense.
For the rest, small price adjustments or new mid-range items could lift overall revenue without depending on a few premium products.
*/


-- =====================================================
-- QUESTION 3: Who are the top 10 customers by order frequency?
-- NOTE: Displays CustomerID instead of customer names (JOIN not yet covered)
-- =====================================================

SELECT 
    Orders.CustomerID AS 'Customer', 
    COUNT(Orders.OrderID) AS 'Number of Order'
FROM Orders
GROUP BY Orders.CustomerID
ORDER BY COUNT(Orders.OrderID) DESC
LIMIT 10;

/* 
INSIGHT:
Customer 20 is the top buyer with 10 orders. A small group of customers makes up most repeat purchases, 
and there’s a steep drop after the top few. This shows we rely heavily on a small core of loyal buyers.


RECOMMENDATION:
Create a loyalty or rewards program for the top customers to keep them engaged.
For customers placing only a few orders, targeted follow-up or personalized offers could help move them into the high-value segment.
*/


-- =====================================================
-- QUESTION 4: Which products are priced above the overall average?
-- =====================================================

SELECT Products.ProductName, Products.Price
FROM Products
WHERE Products.Price > (SELECT AVG(Products.Price) FROM Products)
ORDER BY Products.Price DESC;

/* 
INSIGHT:
Most products above the average price fall between 30 and 60. A few items, like Côte de Blaye, are extreme outliers and sit far above everything else. 
The catalog is mostly mid-priced with a handful of premium products.


RECOMMENDATION:
Review the premium items to confirm their price points are intentional and still competitive.
If they’re meant to be luxury or specialty products, they may benefit from clearer marketing.
For mid-range products, bundle offers or slight price increments could help increase overall sales.
*/


-- =====================================================
-- QUESTION 5: Are there customers who have never placed an order?
-- =====================================================

SELECT 
    Customers.CustomerID, 
    Customers.CustomerName,
    Customers.Country
FROM Customers
WHERE Customers.CustomerID NOT IN (
    SELECT DISTINCT Orders.CustomerID 
    FROM Orders)
ORDER BY CAST(Customers.CustomerID AS UNSIGNED) ASC;

/* 
INSIGHT:
There are 17 customers who haven’t placed any orders. Most of them are in Europe and Latin America. These are potential customers we haven’t activated yet.


RECOMMENDATION:
Run a re-engagement campaign focused on these regions. Consider offering discounts or asking for feedback on what prevented them from making a first purchase.
*/

