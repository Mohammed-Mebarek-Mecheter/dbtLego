-- models/aggregations/total_quantity_per_part.sql
SELECT
    part_num,
    SUM(quantity) AS total_quantity
FROM lego_db.lego_schema.inventory_parts
GROUP BY part_num