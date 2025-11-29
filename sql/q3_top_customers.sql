-- PURPOSE:
-- Lists the top 10 customers by number of orders placed.
-- Highlights high-value repeat customers and supports loyalty program decisions.

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
