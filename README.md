![SQL](https://img.shields.io/badge/SQL-MySQL-blue)
![Status](https://img.shields.io/badge/Status-Complete-success)

# Northwind Database - Customer & Product Analysis

## 📊 Project Overview
This project analyzes the Northwind database to uncover customer distribution patterns, product pricing strategies, 
and identify business opportunities for growth. Using SQL queries, I explored customer behavior, order frequency, 
and pricing structures to provide actionable business recommendations.

## 🎯 Business Objectives
- Identify key customer markets and concentration areas
- Analyze product pricing strategy and catalog distribution
- Discover high-value repeat customers
- Find inactive customers representing untapped revenue potential

## 🛠️ Technologies Used
- **Database**: W3Schools Northwind Database
- **Language**: SQL (MySQL)
- **Tools**: TablePlus, GitHub for version control

## 🛠️ SQL Skills Demonstrated
- Aggregate functions (COUNT, MIN, MAX, AVG)
- Subqueries for filtering and comparison
- NOT IN for exclusion logic
- GROUP BY for data aggregation
- ORDER BY with CAST for data type handling
- Data quality assessment and handling

## 📁 Project Structure
```
northwind-customer-analysis/
│
├── README.md                          # Project documentation
└── queries.sql                        # Main SQL queries and analysis
```

## 🔍 Key Analysis Questions

### 1. Which 5 countries have the most customers?
**Finding**: USA leads with 13 customers (25% of top 5), followed by Germany and France with 11 each.

**Business Impact**: Strong market concentration in North America and Western Europe represents 69% of top markets.

### 2. What are the minimum, maximum, and average product prices?
**Finding**: Pricing ranges from $10 to $263.50 with an average of $28.87, indicating a budget-to-mid-tier market focus.

**Business Impact**: Product catalog is dominated by affordable items with only a few premium outliers.

### 3. Who are the top 10 customers by order frequency?
**Finding**: Customer ID 20 leads with 10 orders, while top 10 customers placed 60 orders collectively.

**Business Impact**: Small but highly engaged customer base with steep drop-off after top performers.

### 4. Which products are priced above the overall average?
**Finding**: Only a few premium products (like Côte de Blaye at $263.50) significantly exceed the $28.87 average.

**Business Impact**: Pricing strategy questions whether premium items align with market positioning.

### 5. Are there customers who have never placed an order?
**Finding**: 17 inactive customers, concentrated in Europe (9) and Latin America (8).

**Business Impact**: Untapped revenue potential across multiple regions requiring targeted re-engagement.

## 💡 Key Insights
- **Market Concentration**: Top 3 countries account for 69% of customer base
- **Pricing Strategy**: 870% spread between cheapest and most expensive products
- **Customer Loyalty**: Significant engagement gap between top-tier and mid-tier customers
- **Inactive Accounts**: 17 customers represent untapped revenue opportunities

## 🎯 Business Recommendations

1. **Market Investment**: Prioritize marketing in USA, Germany, and France where customer presence is strongest

2. **Premium Product Review**: Evaluate high-priced items (>$70) to ensure pricing justification and market fit

3. **VIP Loyalty Program**: Implement exclusive benefits for top 10 customers to prevent churn

4. **Re-engagement Campaigns**: Launch region-specific promotions targeting 17 inactive customers in Europe and Latin America

5. **Pricing Optimization**: Explore mid-range product expansion to increase average order value

## 📝 Data Quality Notes
- Text fields contain trailing whitespace (e.g., 'Germany ' not 'Germany')
- All queries include spaces in filter conditions to handle this issue
- CustomerID casting used for proper numerical sorting

## 👨‍💻 Author
**Taofeek Salami**  
Data Analyst | SQL Enthusiast  
November 2025

## 🔗 Connect With Me
- [LinkedIn](https://www.linkedin.com/in/taofeek-salami-460a93245/)
- [GitHub](https://github.com/HarjiiBoss)
- [Email](mailto:salamitaofeek92@gmail.com)

## 📄 License
This project is open source and available for educational purposes.

---

*This analysis was conducted using the W3Schools Northwind sample database for learning and portfolio demonstration purposes.*
