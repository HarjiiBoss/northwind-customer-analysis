# Northwind Customer & Product Analysis — Summary Report

## Overview
This document summarizes the key findings, insights, and recommendations from the SQL analysis of the Northwind database. 
It provides a high-level business interpretation without requiring a review of individual query files.

---

## 1. Customer Distribution by Country
**Finding:**  
USA, Germany, and France have the highest customer counts.

**Insight:**  
These three countries represent a large share of the customer base, showing strong market concentration in North America and Western Europe.

**Business Impact:**  
They should remain priority regions for marketing and distribution investment.

---

## 2. Product Price Analysis
**Finding:**  
Prices range from 10 to 263.50 with an average of 28.87.

**Insight:**  
The catalog is dominated by low- to mid-tier products with only a handful of premium items.

**Business Impact:**  
Revenue can be increased by expanding mid-priced offerings and reassessing pricing justification for premium products.

---

## 3. Top Customers by Order Frequency
**Finding:**  
Customer ID 20 placed the most orders (10). The top 10 customers placed 60 orders in total.

**Insight:**  
A small group of repeat buyers is responsible for a large share of purchase activity.

**Business Impact:**  
A loyalty or VIP rewards program could help retain these valuable customers.

---

## 4. Products Priced Above the Average
**Finding:**  
Most above-average products fall between 30–63, with four significantly higher-priced outliers.

**Insight:**  
Premium items heavily skew the overall average price.

**Business Impact:**  
Premium product pricing should be reviewed for alignment with market positioning.

---

## 5. Inactive Customers (No Orders)
**Finding:**  
17 customers have never placed an order.

**Insight:**  
These accounts represent unrealized revenue.

**Business Impact:**  
Targeted re-engagement campaigns, especially in Europe and Latin America could activate new sales.

---

## Data Quality Notes
- Text fields contain trailing spaces (e.g., `"Germany "`).  
- Queries intentionally match fields including the whitespace.  
- CustomerID is stored as text and cast for correct numeric sorting.

---

## Conclusion
The analysis highlights strong geographic concentration, clear pricing tiers, and distinct customer engagement patterns. 
Optimizing pricing, strengthening retention strategies, and activating inactive customers can significantly improve business performance.
