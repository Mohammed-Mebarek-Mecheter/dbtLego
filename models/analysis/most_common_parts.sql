-- models/analysis/most_common_parts.sql

SELECT
    ip.part_num,
    p.name,
    SUM(ip.quantity) AS total_quantity
FROM
    {{ ref('inventory_parts') }} AS ip
JOIN
    {{ ref('parts') }} AS p ON ip.part_num = p.part_num
GROUP BY
    ip.part_num,
    p.name
ORDER BY
    total_quantity DESC
LIMIT 10
