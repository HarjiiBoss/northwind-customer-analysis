# Northwind Database — Customer and Product Performance Analysis

## Executive Summary

This project evaluates customer concentration, product pricing structure, and revenue risk within a wholesale distribution environment modeled by the Northwind dataset.

The objective was to identify:
- Market concentration risk
- Revenue dependency on repeat customers
- Pricing distribution imbalance
- Inactive customers representing potential revenue recovery

Using structured SQL analysis, the project surfaces actionable business insights rather than raw query outputs.

---

## Business Context

The Northwind dataset simulates a wholesale distribution company managing customers, orders, and product inventory across multiple countries.

For a business operating in this environment, understanding customer concentration, pricing structure, and revenue dependency is critical for sustainable growth.

This analysis evaluates potential concentration risks, revenue leakage, and pricing imbalances that could impact long-term profitability.

---

## Business Questions

1. Is revenue concentrated in specific geographic markets?
2. Does the pricing structure create product portfolio imbalance?
3. How dependent is revenue on repeat customers?
4. Are there inactive customers representing revenue leakage?

---

## Analysis Approach

The analysis was conducted using structured SQL queries across customer, order, and product tables.

Each business question was translated into:
- Aggregation analysis for distribution patterns
- Subqueries for comparative evaluation
- Join operations for relational insights
- Filtering logic to identify inactivity and anomalies

Query outputs were interpreted to derive business meaning beyond numerical results.

---

## Key Findings

- Customer concentration is heavily weighted toward the USA and Western Europe, indicating geographic dependency.
- Product pricing shows significant variance, with a small number of premium items skewing the overall average.
- Revenue appears concentrated among a small group of repeat buyers.
- 17 customers have never placed an order, representing potential revenue recovery opportunities.

---

## Business Implications

- Heavy geographic concentration may expose the business to regional economic risk.
- Revenue dependency on repeat customers increases vulnerability if key accounts are lost.
- Pricing skew suggests potential portfolio imbalance and perceived value gaps.
- Inactive customers indicate missed revenue opportunities and inefficient customer lifecycle management.

---

## Recommendations

1. Diversify customer acquisition efforts beyond dominant geographic markets to reduce concentration risk.
2. Implement structured retention programs targeting high-frequency customers.
3. Reassess premium product positioning and pricing elasticity.
4. Launch targeted re-engagement campaigns for inactive customers.
5. Evaluate mid-tier product expansion to stabilize pricing distribution.

---

## Methodology & Tools

### 🛠️ Technologies Used
- SQL (MySQL syntax)  
- Northwind Database (W3Schools)  
- TablePlus  
- GitHub for version control and documentation  

---

### 🛠️ SQL Skills Demonstrated
- COUNT, MIN, MAX, AVG  
- Subqueries for comparison  
- NOT IN filtering logic  
- GROUP BY and ORDER BY  
- Casting text IDs for sorting  
- Handling data quality inconsistencies  

---

### 📁 Project Structure
```
northwind-customer-analysis/
│
├── README.md
│
├── sql/
│   ├── q1_top_countries.sql
│   ├── q2_price_summary.sql
│   ├── q3_top_customers.sql
│   ├── q4_above_average_products.sql
│   ├── q5_inactive_customers.sql
│   └── ...
│
├── results/
│   ├── query1_customer_distribution.pdf
│   ├── query2_product_prices.pdf
│   ├── query3_top_customers.pdf
│   ├── query4_above_avg_products.pdf
│   ├── query5_inactive_customers.pdf
│   └── ...
│
└── docs/
    └── summary.md
```

### 📄 Query Output Files
All exported query results (PDF/CSV) are available in the /results directory.

---


### 📝 Data Quality Notes
The dataset contains trailing whitespace in text fields (example: `'Germany '` instead of `'Germany'`).  
Queries include these spaces intentionally:

```sql
WHERE Country = 'Germany '
```

Customer IDs are stored as text. Casting is used for proper numeric sorting.

---

## Contact

Taofeek Salami  
LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
GitHub: https://github.com/HarjiiBoss  
Email: salamitaofeek92@gmail.com

---

## License
This project is licensed under the MIT License.

