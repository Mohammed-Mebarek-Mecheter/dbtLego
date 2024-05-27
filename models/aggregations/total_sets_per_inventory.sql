-- models/aggregations/total_sets_per_inventory.sql
SELECT
    inventory_id,
    SUM(quantity) AS total_sets
FROM {{ ref('inventory_sets') }}
GROUP BY inventory_id
