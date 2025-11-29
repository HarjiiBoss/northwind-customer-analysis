# Northwind Customer & Product Analysis — Summary Report

## Overview
This document summarizes the key findings, insights, and recommendations from the SQL-based analysis of the Northwind database. The purpose is to provide a consolidated reference for business decisions without reviewing individual query files.

---

## 1. Customer Distribution by Country
**Key Finding:**  
USA, Germany, and France have the highest customer counts.

**Insight:**  
Top three countries account for a significant share of total customers, showing strong market concentration in North America and Western Europe.

**Business Impact:**  
These regions offer proven demand and should be prioritized for continued marketing and distribution investment.

---

## 2. Product Price Analysis
**Key Finding:**  
Prices range from 10 to 263.50 with an average of 28.87.

**Insight:**  
Catalog is dominated by low to mid-tier products. Only a few premium-priced outliers exist.

**Business Impact:**  
The business can increase revenue by expanding mid-price products and reviewing premium item justification.

---

## 3. Top Customers by Order Frequency
**Key Finding:**  
Customer ID 20 is the top performer with 10 orders. Top 10 customers placed 60 total orders.

**Insight:**  
A small group of repeat buyers contributes disproportionately to total orders.

**Business Impact:**  
A loyalty program targeting these customers can improve retention and prevent revenue loss.

---

## 4. Products Priced Above Average
**Key Finding:**  
Most above-average products fall between 30–63, except for four extreme premium items.

**Insight:**  
Premium items significantly skew the average, suggesting potential pricing inconsistencies.

**Business Impact:**  
Premium products should be reviewed for pricing accuracy and marketing positioning.

---

## 5. Inactive Customers (No Orders)
**Key Finding:**  
17 customers have never placed an order.

**Insight:**  
These customers represent latent revenue potential.

**Business Impact:**  
A targeted re-engagement campaign, especially in Europe and Latin America, could activate new sales.

---

## Data Quality Notes
- Some text fields contain trailing spaces (e.g., `"Germany "`).  
- Queries intentionally match fields *with* spaces.  
- CustomerID stored as text, cast to numeric for sorting.

---

## Conclusion
The Northwind database reveals strong regional demand patterns, pricing segmentation opportunities, and clear customer engagement tiers. Strategic marketing, pricing optimization, and customer retention efforts can significantly improve business performance.
