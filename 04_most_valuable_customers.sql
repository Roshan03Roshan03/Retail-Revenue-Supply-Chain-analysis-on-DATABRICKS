-- Datasets: samples.tpch.orders, customer, region
-- Dashboard dataset: Most Valuable Customers
SELECT
  revenue_per_customer.customer_id AS `Customer ID #`,
  customers.c_mktsegment AS `Customer Segment`,
  concat(
    '<div style="background-color:#',
    CASE
      WHEN revenue_per_customer.total_revenue BETWEEN 0 AND 1500000 THEN '88BFE0'
      WHEN revenue_per_customer.total_revenue BETWEEN 1500001 AND 3000000 THEN 'FCED9F'
      WHEN revenue_per_customer.total_revenue BETWEEN 3000001 AND 5000000 THEN 'ED9A93'
      ELSE 'CACFD3'
    END,
    '; text-align:center;"> $',
    format_number(revenue_per_customer.total_revenue, 0),
    '</div>'
  ) AS `Total Customer Revenue`
FROM
  (
    SELECT
      o_custkey AS customer_id,
      sum(o_totalprice) AS total_revenue
    FROM
      `samples`.`tpch`.`orders`
    GROUP BY
      1
    HAVING
      total_revenue > 0
  ) AS revenue_per_customer
JOIN `samples`.`tpch`.`customer` AS customers
  ON revenue_per_customer.customer_id = customers.c_custkey
JOIN `samples`.`tpch`.`region` AS region
  ON customers.c_nationkey = region.r_regionkey
ORDER BY
  revenue_per_customer.customer_id
LIMIT
  400;
