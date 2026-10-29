# Northwind Customer & Product Analysis — Summary Report

Findings from the five SQL queries, in report form. Each figure comes from the matching result in `results/`; derived figures are listed with their calculations in `.figures-allow`.

---

## 1. Customers by Country

**Finding:** USA has 13 customers, Germany and France 11 each, Brazil 9 and the UK 7. Together these five countries hold 51 of the 91 customers (56%).

**What it means:** the customer base is concentrated in North America and Western Europe. The query counts customers only, so it does not show how much each country orders or spends.

---

## 2. Product Prices

**Finding:** prices range from $2.50 to $263.50, with an average of $28.87.

**What it means:** a few premium items raise the average, so the average describes the catalogue poorly; the median would be a better summary.

---

## 3. Customers by Order Frequency

**Finding:** customer 20 placed the most orders (10). The next three placed 7 each, and the top 10 placed 62 orders between them.

**What it means:** order counts fall gradually after the top customer. The total number of orders was not calculated, so the top 10's share of all orders is not known.

---

## 4. Products Priced Above the Average

**Finding:** 25 products are priced above the average. 20 of them cost between $30 and $60; five cost more than $60, led by Côte de Blaye at $263.50.

**What it means:** the premium items are few and far above the rest of the catalogue.

---

## 5. Customers Who Have Never Ordered

**Finding:** 17 customers have never placed an order: nine in Europe, six in North America (five in the USA) and two in Argentina.

**What it means:** these accounts are registered but inactive. The data does not show why, or what they might be worth.

---

## Recommendations

1. Treat the USA, Germany and France as core markets, and compare orders and sales by country before setting targets elsewhere.
2. Measure the top customers' share of all orders and sales before deciding how much a loyalty programme is worth.
3. Contact the 17 inactive customers, starting with Europe and the USA, and ask what has stopped a first order.

Pricing changes are not recommended: no sales data by product was analysed.

---

## Data Quality Notes

- Some text fields contain trailing spaces (for example `'Germany '`); the queries match them exactly.
- Customer IDs are stored as text and cast to numbers for sorting.
