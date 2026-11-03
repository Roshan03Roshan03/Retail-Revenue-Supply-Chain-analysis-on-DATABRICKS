-- Dataset: samples.tpch.lineitem
-- Dashboard dataset: Orders vs Returns
SELECT
    l_shipdate,
    l_suppkey,
    COUNT(*) AS total_orders,
    SUM(CASE WHEN l_returnflag = 'R' THEN 1 ELSE 0 END) AS return_count
FROM
    samples.tpch.lineitem
GROUP BY
    l_shipdate,
    l_suppkey
ORDER BY
    l_shipdate;
