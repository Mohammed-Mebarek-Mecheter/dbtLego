-- models/aggregations/unique_parts_count_per_inventory.sql
SELECT
    inventory_id,
    COUNT(DISTINCT part_num) AS unique_parts_count
FROM {{ ref('inventory_parts') }}
GROUP BY inventory_id
