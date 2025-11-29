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
