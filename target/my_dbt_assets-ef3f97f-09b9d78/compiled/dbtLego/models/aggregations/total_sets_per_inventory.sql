-- models/aggregations/total_sets_per_inventory.sql
SELECT
    inventory_id,
    SUM(quantity) AS total_sets
FROM lego_db.lego_schema.inventory_sets
GROUP BY inventory_id