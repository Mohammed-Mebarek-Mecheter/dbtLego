
  
    

        create or replace transient table lego_db.lego_schema.total_minifigs_per_inventory
         as
        (-- models/aggregations/total_minifigs_per_inventory.sql
SELECT
    inventory_id,
    SUM(quantity) AS total_minifigs
FROM lego_db.lego_schema.inventory_minifigs
GROUP BY inventory_id
        );
      
  