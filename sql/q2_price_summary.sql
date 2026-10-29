-- PURPOSE:
-- Calculates minimum, maximum, and average product prices.
-- Evaluates pricing spread to understand catalog positioning and potential gaps.

-- =====================================================
-- QUESTION 2: What are the minimum, maximum, and average product prices?
-- =====================================================

SELECT MIN(Products.Price) AS 'Min Price', MAX(Products.Price) AS 'Max Price', AVG(Products.Price) AS 'Average Price'
FROM Products;

/* 
INSIGHT:
Prices range from 2.50 to 263.50, with an average of 28.87 (all products, no exclusions). Most products fall near the lower side of this range; only a few items are truly expensive. 
This shows the catalog leans toward budget and mid-priced products.


RECOMMENDATION:
Review the highest-priced items to confirm their pricing makes sense.
Sales by product were not analysed, so the effect of price changes or new mid-range items on revenue is not known.
*/
