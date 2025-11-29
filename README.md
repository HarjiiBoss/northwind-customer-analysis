![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Status](https://img.shields.io/badge/Status-Complete-success)

# Northwind Database — Customer and Product Analysis

## 📊 Project Overview
This project analyzes customer distribution, ordering behavior, and product pricing using the Northwind database (W3Schools). The analysis identifies customer patterns, evaluates product pricing structure, and uncovers opportunities for improving revenue and engagement.

**Project:** Northwind Database — Customer and Product Analysis  
**Author:** Taofeek Salami  
**Date:** November 2025  
**Database:** Northwind (W3Schools)

---

## 🎯 Business Objectives
- Identify key customer markets and concentration areas  
- Analyze product pricing distribution and catalog structure  
- Discover high-value repeat customers  
- Detect inactive customers and potential re-engagement opportunities  

---

## 🛠️ Technologies Used
- SQL (MySQL syntax)  
- Northwind Database (W3Schools)  
- TablePlus  
- GitHub for version control and documentation  

---

## 🛠️ SQL Skills Demonstrated
- COUNT, MIN, MAX, AVG  
- Subqueries for comparison  
- NOT IN filtering logic  
- GROUP BY and ORDER BY  
- Casting text IDs for sorting  
- Handling data quality inconsistencies  

---

## 📁 Project Structure
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

## 📄 Query Output Files
All exported query results (PDF/CSV) are available in the /results directory.

---

## 🔍 Key Analysis Questions (High-Level Summary)

### 1. Which countries have the most customers?
USA, Germany, and France rank highest.

### 2. What is the product price distribution?
Prices range widely, with an average around $29.

### 3. Who are the top customers by order frequency?
A small group of customers accounts for most repeat orders.

### 4. Which products are priced above the average?
Only a limited number of premium items exceed average product price.

### 5. Are there customers who have never placed an order?
17 customers show no ordering activity.

---

## 💡 Key Insights (Summary)
- Strong customer concentration in USA and Western Europe  
- Large gap between lowest and highest product prices  
- Heavy dependence on repeat customers  
- Multiple inactive customers represent re-engagement potential  

---

## 🎯 Business Recommendations (Summary)
1. Prioritize marketing investment in strongest markets  
2. Review high-priced items for market fit  
3. Build a loyalty program for frequent buyers  
4. Launch re-engagement campaigns for inactive customers  
5. Expand mid-range product options  

---

## 📝 Data Quality Notes
The dataset contains trailing whitespace in text fields (example: `'Germany '` instead of `'Germany'`).  
Queries include these spaces intentionally:

```sql
WHERE Country = 'Germany '
```

Customer IDs are stored as text. Casting is used for proper numeric sorting.

---

## 👨‍💻 Author
**Taofeek Salami**  
Data Analyst | SQL Enthusiast  
November 2025  

- LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
- GitHub: https://github.com/HarjiiBoss  
- Email: salamitaofeek92@gmail.com  

---

## 📄 License
This project is open source and available for educational use.

---

*This analysis uses the W3Schools Northwind sample database for learning and portfolio demonstration.*
