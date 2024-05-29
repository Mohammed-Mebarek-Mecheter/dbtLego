
  
    

        create or replace transient table lego_db.lego_schema.unique_parts_count_per_inventory
         as
        (-- models/aggregations/unique_parts_count_per_inventory.sql
SELECT
    inventory_id,
    COUNT(DISTINCT part_num) AS unique_parts_count
FROM lego_db.lego_schema.inventory_parts
GROUP BY inventory_id
        );
      
  