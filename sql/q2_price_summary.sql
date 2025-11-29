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
Prices range from 10 to 97, with an average around 29. Most products fall near the lower side of this range; only a few items are truly expensive. 
This shows the catalog leans toward budget and mid-priced products.


RECOMMENDATION:
Review the highest-priced items to confirm their pricing makes sense.
For the rest, small price adjustments or new mid-range items could lift overall revenue without depending on a few premium products.
*/
