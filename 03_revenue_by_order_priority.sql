-- Dataset: samples.tpch.orders
-- Dashboard dataset: Revenue by Order Priority
SELECT
  o_orderdate AS Date,
  o_orderpriority AS Priority,
  sum(o_totalprice) AS `Total Price`
FROM
  `samples`.`tpch`.`orders`
WHERE
  o_orderdate > '1994-01-01'
  AND o_orderdate < '1994-01-31'
GROUP BY
  1,
  2
ORDER BY
  1,
  2;
