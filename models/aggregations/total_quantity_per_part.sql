-- models/aggregations/total_quantity_per_part.sql
SELECT
    part_num,
    SUM(quantity) AS total_quantity
FROM {{ ref('inventory_parts') }}
GROUP BY part_num
