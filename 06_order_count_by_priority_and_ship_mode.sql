-- Datasets: samples.tpch.orders, lineitem
-- Dashboard dataset: Order count by priority and ship mode
SELECT
    o.o_orderpriority AS priority,
    l.l_shipmode AS ship_mode,
    COUNT(*) AS order_count,
    o.o_orderdate
FROM
    samples.tpch.orders AS o
JOIN
    samples.tpch.lineitem AS l
ON
    o.o_orderkey = l.l_orderkey
GROUP BY
    o.o_orderpriority,
    l.l_shipmode,
    o.o_orderdate
ORDER BY
    priority,
    ship_mode;
