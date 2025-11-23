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
USA leads with 13 customers (25% of top 5 markets), followed by 
Germany and France with 11 customers each (22% each). 

The top 3 countries (USA, Germany, France) represent 35 customers, 
accounting for 69% of the top 5 markets. 

Brazil (9) and UK (7) show moderate presence. 
This indicates strong market concentration in North America and Western Europe.
*/

/*
RECOMMENDATION:
Prioritize marketing investments in the top 3 markets (USA, Germany, France) where we have proven customer base and strongest presence. 

Investigate success factors in these markets (product preferences, pricing, distribution channels) and replicate in emerging markets like Brazil and UK. 

Consider localized customer retention programs for top markets to maintain market leadership and prevent customer churn to competitors.
*/


-- =====================================================
-- QUESTION 2: What are the minimum, maximum, and average product prices?
-- =====================================================

SELECT MIN(Products.Price) AS 'Min Price', MAX(Products.Price) AS 'Max Price', AVG(Products.Price) AS 'Average Price'
FROM Products;

/* 
INSIGHT:
The product catalog ranges from 10 at the low end to 97 at the high end. 
This is a large 870 percent difference between the cheapest and most expensive product, showing a wide pricing spread.

The average price is 28.87, which sits much closer to the minimum price. This tells us that most products are low to mid priced, while only a few items are in the premium range.
This pattern suggests that the business operates mainly in a budget to mid tier market rather than a high end market.
*/

/*
RECOMMENDATION:
The product team should review premium priced items above 70 to confirm they justify their margin and are not overpriced relative to the rest of the catalog.

Marketing and sales teams can focus promotions on the majority low to mid tier products, which are closer to the average price and likely have the highest sales volume opportunity.

The business could also explore introducing more mid range or slightly higher priced items to raise the average price, 
which could increase revenue without depending heavily on a few premium outliers.
*/


-- =====================================================
-- QUESTION 3: Who are the top 10 customers by order frequency?
-- =====================================================

-- [Query to be added]

/* 
INSIGHT:
*/

/*
RECOMMENDATION:
*/


-- =====================================================
-- QUESTION 4: Which products are priced above the overall average?
-- =====================================================

-- [Query to be added]

-- INSIGHT: 
-- RECOMMENDATION: 


-- =====================================================
-- QUESTION 5: Are there customers who have never placed an order?
-- =====================================================

-- [Query to be added]

-- INSIGHT: 
-- RECOMMENDATION:
