-- models/analysis/most_common_colors.sql

SELECT
    c.name AS color_name,
    COUNT(*) AS part_count
FROM
    {{ ref('inventory_parts') }} AS ip
JOIN
    {{ ref('colors') }} AS c ON ip.color_id = c.id
GROUP BY
    c.name
ORDER BY
    part_count DESC
LIMIT 10
