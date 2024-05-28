-- models/aggregations/total_spare_quantity_per_inventory.sql
SELECT
    inventory_id,
    SUM(CASE WHEN is_spare THEN quantity ELSE 0 END) AS total_spare_quantity
FROM lego_db.lego_schema.inventory_parts
GROUP BY inventory_id