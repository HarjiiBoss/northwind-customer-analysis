# Northwind Database — Customer and Product Performance Analysis

SQL analysis of the Northwind sample database: where customers are concentrated, how product prices are spread, which customers order most often, and which registered customers have never ordered.

> **Status:** Complete (February 2026); figures re-checked and corrected in October 2026. 17 of 91 customers have never placed an order, and five countries hold 56% of customers.

**Project page:** [taofeeksalami.com/northwind-customer-analysis](https://taofeeksalami.com/northwind-customer-analysis)

---

## Key Findings

| Question | Finding |
|----------|---------|
| Where are customers concentrated? | USA has 13 customers, Germany and France 11 each, Brazil 9 and the UK 7. These five countries hold 51 of the 91 customers (56%); the USA alone holds 14.3% |
| How are prices spread? | Prices range from $2.50 to $263.50, with an average of $28.87. Of the 25 products priced above the average, 20 cost between $30 and $60; five sit above $60, led by Côte de Blaye at $263.50 |
| Who orders most often? | The top 10 customers placed 62 orders. Customer 20 placed the most (10); the next three placed 7 each |
| Who has never ordered? | 17 customers: nine in Europe, six in North America (five in the USA) and two in Argentina |

- A few premium items raise the average price, so the average describes the catalogue poorly; the median would be a better summary.
- The analysis counts customers and orders. It does not measure revenue by customer, country or product, so it cannot show how much each group is worth.

---

## Business Questions

1. Are customers concentrated in specific countries?
2. How are product prices distributed?
3. How concentrated are orders among the most frequent customers?
4. Are there customers who have never placed an order?

---

## Recommendations

1. **Core markets:** treat the USA, Germany and France as core markets, and compare orders and sales by country before setting targets for Brazil and the UK.
2. **Frequent customers:** the top 10 customers placed 62 orders. Measure their share of all orders and sales before deciding how much a loyalty programme is worth.
3. **Inactive accounts:** contact the 17 customers who have never ordered, starting with Europe and the USA, and ask what has stopped a first order.

Pricing changes are not recommended: sales by product were not analysed, so their effect on revenue is not known.

---

## Dataset

| Item | Details |
|------|---------|
| Source | Northwind sample database, as provided by the W3Schools SQL editor |
| Tables used | `Customers`, `Orders`, `Products` |
| Size | 91 customers in the `Customers` table |
| Unit of analysis | One customer (questions 1, 3 and 4) and one product (question 2) |
| Data quality | Some text fields have trailing spaces (for example `'Germany '`), and customer IDs are stored as text, so queries match the spaces and cast IDs for sorting |
| Licence | Public sample data for learning; not redistributed here |

---

## Approach

Five SQL queries in MySQL syntax, run in TablePlus, using `COUNT`, `MIN`, `MAX`, `AVG`, `GROUP BY`, subqueries and `NOT IN`. No joins were used, so question 3 shows customer IDs rather than names. Each query's result is saved as a PDF in `results/`.

---

## Reproducibility

The queries were run in TablePlus on a MySQL copy of the W3Schools Northwind data.

1. Load the Northwind data into MySQL, or use the [W3Schools SQL editor](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all), which has the same tables.
2. Run each file in `sql/` and compare the result with the matching PDF in `results/`. If a query that filters on a country returns nothing, the copy you are using may not have the trailing spaces described under Dataset; remove them from the filter value.
3. Check the figures in this README and on the project page with the [Data Analysis Playbook](https://github.com/HarjiiBoss/analytics-playbook)'s `tools/check_figures.py`. Derived figures checked by hand are listed with their calculations in `.figures-allow`.

---

## Repository Structure

```text
northwind-customer-analysis/
├── docs/
│   ├── index.html       # Project page (taofeeksalami.com/northwind-customer-analysis)
│   └── summary.md       # Findings in report form
├── results/             # Query results, one PDF per question
├── sql/                 # q1–q5, one file per question with notes on the result
├── .figures-allow       # Derived figures checked by hand, with their calculations
├── LICENSE
└── README.md
```

---

## Contact

Taofeek Salami  
LinkedIn: https://www.linkedin.com/in/taofeek-salami-460a93245/  
GitHub: https://github.com/HarjiiBoss  
Email: salamitaofeek92@gmail.com

---

## License

This project is licensed under the MIT License (see `LICENSE`). The Northwind sample data is not covered by this licence.

---

## Corrections

**29 October 2026**

- **Order concentration:** "a small group of repeat customers contributes a disproportionate share of total orders" removed. The top 10 placed 62 orders, but the total number of orders was not calculated, so their share is not known.
- **Recommendations:** pricing recommendations ("reassess premium positioning and pricing elasticity", "mid-tier product expansion", "small price adjustments could lift revenue") removed from the README, the project page and the SQL notes, because no sales data was analysed. "Apply proven strategies" removed from the page: the data shows customer counts, not what worked.
- **Summary report:** `docs/summary.md` still had figures from before the October audit (prices from "10", "60 orders", "30–63" with "four" outliers, "Latin America"). It now matches the results: $2.50, 62 orders, 20 of 25 above-average products between $30 and $60 with five above, and Argentina.

**26 October 2026**

- Price range, order counts and inactive-customer regions corrected after the portfolio audit (pull request #1).

## Published Surfaces

Every place this project's findings appear outside this repository. When a figure changes, each one is updated and its date refreshed (Data Analysis Playbook v3.4, Published Surfaces).

| Surface | Link | Figures quoted | Last checked |
|---------|------|----------------|--------------|
| Project page | [taofeeksalami.com/northwind-customer-analysis](https://taofeeksalami.com/northwind-customer-analysis) | Full findings | 29 Oct 2026 |
| Portfolio site card | [taofeeksalami.com](https://taofeeksalami.com) | 17 inactive customers, $29 average price, 5 priority markets | 29 Oct 2026 |
| GitHub profile README | [github.com/HarjiiBoss](https://github.com/HarjiiBoss) | 17 inactive (9 Europe, 6 North America, 2 Argentina), $2.50–$263.50, $28.87 average, 62 orders | 29 Oct 2026 |
