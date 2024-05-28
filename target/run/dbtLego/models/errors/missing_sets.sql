
  
    

        create or replace transient table lego_db.lego_schema.missing_sets
         as
        (-- models/errors/missing_sets.sql

WITH inventories AS (
    SELECT
        set_num
    FROM lego_db.lego_schema.inventories
),
sets AS (
    SELECT
        set_num
    FROM lego_db.lego_schema.sets
)

SELECT DISTINCT
    i.set_num
FROM inventories i
LEFT JOIN sets s ON i.set_num = s.set_num
WHERE s.set_num IS NULL
        );
      
  