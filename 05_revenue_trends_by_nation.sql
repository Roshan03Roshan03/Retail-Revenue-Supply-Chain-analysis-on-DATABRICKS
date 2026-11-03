-- Datasets: samples.tpch.customer, orders, lineitem, nation
-- Dashboard dataset: Revenue Trends by Nation
SELECT
    o_orderdate,
    n_name AS nation,
    sum(l_extendedprice * (1 - l_discount) * (((length(n_name))/100) + (year(o_orderdate)-1993)/100)) AS revenue
FROM
    `samples`.`tpch`.`customer`,
    `samples`.`tpch`.`orders`,
    `samples`.`tpch`.`lineitem`,
    `samples`.`tpch`.`nation`
WHERE
    c_custkey = o_custkey
    AND l_orderkey = o_orderkey
    AND c_nationkey = n_nationkey
    AND n_name in ('ARGENTINA', 'UNITED KINGDOM', 'FRANCE', 'BRAZIL', 'CHINA', 'UNITED STATES', 'JAPAN', 'JORDAN')
GROUP BY
    o_orderdate,
    nation
ORDER BY
    nation ASC,
    o_orderdate ASC;
