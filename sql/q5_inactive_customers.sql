-- PURPOSE:
-- Lists all customers who have never placed an order.
-- Helps detect inactive segments for targeted re-engagement campaigns.

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
