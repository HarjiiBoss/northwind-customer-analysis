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
Customer ID 20 is the clear leader with 10 orders, representing the most engaged customer in our database. 
Three customers (IDs 87, 65, and 63) follow with 7 orders each, forming a strong second tier. 

The top 10 customers collectively placed 60 orders, showing significant order concentration among a small group of high-value 
repeat customers. There's a notable decline from 10 orders (rank #1) to 4 orders (rank #10), indicating a steep drop-off in engagement beyond our most loyal customers. 

This pattern suggests a small but highly engaged core customer base with opportunity to improve mid-tier customer retention.
*/

/*
RECOMMENDATION:
Implement a VIP loyalty program for the top 10 customers (IDs 20, 87, 65, 63, etc.) offering exclusive benefits such as priority support, 
early access to new products, or volume discounts to maintain their engagement and prevent churn to competitors. 

The marketing team should analyze purchase patterns of Customer 20 (10 orders) to identify success factors and replicate them with customers in the 4-7 order range 
to move them into the top tier. 

Additionally, develop a re-engagement campaign targeting customers with only 1-3 orders to understand barriers to repeat purchases and convert them into frequent 
buyers, thereby reducing the steep drop-off we see in the current customer base.
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
The results show that most products priced above the average fall in the 30 to 63 range, while Côte de Blaye (263.50), Thüringer Rostbratwurst (123.79), Mishi Kobe Niku (97.00), 
and Sir Rodney's Marmalade (81.00) stand out as extreme outliers far above the average price of 28.87. 

This suggests that the catalog is dominated by affordable mid priced products, with only a few premium items driving up the overall average. 
The sharp difference raises questions about whether these premium prices are tied to category value, import costs, or inconsistent pricing strategy.
*/

/*
RECOMMENDATION:
The product team should review the top priced items, especially Côte de Blaye and Thüringer Rostbratwurst, to confirm whether their high pricing aligns with demand, cost structure, 
and intended market positioning. 

If these items truly serve a premium segment, marketing can highlight them as specialty products to capture higher margin sales. 
For the larger group of mid priced items, the business can explore small, strategic price adjustments or bundled offers to lift revenue without disrupting the affordability of the core catalog.
*/


-- =====================================================
-- QUESTION 5: Are there customers who have never placed an order?
-- =====================================================

SELECT Customers.CustomerID, Customers.CustomerName
FROM Customers
WHERE Customers.CustomerID NOT IN (
    SELECT DISTINCT Orders.CustomerID 
    FROM Orders)
ORDER BY CAST(Customers.CustomerID AS UNSIGNED) ASC;

-- INSIGHT: 
-- RECOMMENDATION:
