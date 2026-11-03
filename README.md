# Retail Revenue & Supply Chain Overview

## Project overview
This project is a Databricks SQL dashboard titled **Retail Revenue & Supply Chain Overview**. The uploaded dashboard configuration shows a summary page with customer and supplier counters, revenue analysis, customer revenue ranking, shipping-method analysis, and a date-range filter.

## Tools and technologies
- Databricks SQL
- SQL
- Databricks sample TPC-H dataset (`samples.tpch`)
- GitHub

## Dashboard components
1. **Unique Suppliers** — distinct supplier count based on `l_suppkey`.
2. **Unique Customers** — distinct customer count based on `o_custkey`.
3. **Revenue by Order Priority** — order revenue grouped by priority for the January 1994 date filter in the source query.
4. **Most Valuable Customers** — customer segment and total customer revenue.
5. **Revenue Trend** — revenue by nation and order date.
6. **Top Shipping Methods** — order counts by priority and ship mode.
7. **Date Range** — date-range filter connected to the dashboard datasets.

## Repository structure
```text
Databricks-Retail-Analytics/
├── SQL_Queries/
│   ├── 01_orders_vs_returns.sql
│   ├── 02_orders_and_customers.sql
│   ├── 03_revenue_by_order_priority.sql
│   ├── 04_most_valuable_customers.sql
│   ├── 05_revenue_trends_by_nation.sql
│   └── 06_order_count_by_priority_and_ship_mode.sql
├── Dashboard_Screenshots/
│   └── README.md
└── README.md
```

## Data source
The SQL in the uploaded dashboard references Databricks' built-in TPC-H sample tables under `samples.tpch`, including `orders`, `lineitem`, `customer`, `nation`, and `region`. This repository documents that source; it does not contain a private customer dataset or exported dashboard file.

## How to use
1. Open your Databricks workspace.
2. Open a SQL editor or notebook attached to a SQL warehouse.
3. Run the queries in `SQL_Queries/` against the available `samples.tpch` tables.
4. Use the query outputs to recreate or review the dashboard visualizations.
5. Add your own dashboard screenshot to `Dashboard_Screenshots/`.

## Dashboard screenshot
Add a screenshot named `dashboard.png` to `Dashboard_Screenshots/` and embed it here:

```markdown
![Retail Revenue & Supply Chain Overview](Dashboard_Screenshots/dashboard.png)
```

## Notes and validation
- The SQL files preserve the query logic supplied in the uploaded dashboard configuration.
- Before presenting results as business conclusions, validate the source queries and joins in your Databricks workspace. In particular, review the join from `customer.c_nationkey` to `region.r_regionkey` in `04_most_valuable_customers.sql`; the uploaded configuration contains that exact join and it has not been silently changed here.
- The uploaded configuration includes a date-range filter connected to multiple date fields. Confirm the filter behavior in the live dashboard.

## Author
GitHub: [Roshan03Roshan03](https://github.com/Roshan03Roshan03)
