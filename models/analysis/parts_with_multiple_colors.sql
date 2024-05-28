-- models/analysis/parts_with_multiple_colors.sql

SELECT
    p.part_num,
    p.name,
    COUNT(DISTINCT e.color_id) AS color_count
FROM
    {{ ref('parts') }} AS p
JOIN
    {{ ref('elements') }} AS e ON p.part_num = e.part_num
GROUP BY
    p.part_num,
    p.name
ORDER BY
    color_count DESC
LIMIT 10
