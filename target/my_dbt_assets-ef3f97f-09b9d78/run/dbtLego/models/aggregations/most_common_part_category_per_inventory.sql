
  
    

        create or replace transient table lego_db.lego_schema.most_common_part_category_per_inventory
         as
        (-- models/aggregations/most_common_part_category_per_inventory.sql
WITH part_counts AS (
    SELECT
        ip.inventory_id,
        p.part_cat_id,
        COUNT(*) AS part_category_count
    FROM lego_db.lego_schema.inventory_parts ip
    JOIN lego_db.lego_schema.parts p ON ip.part_num = p.part_num
    GROUP BY ip.inventory_id, p.part_cat_id
),
ranked_part_categories AS (
    SELECT
        inventory_id,
        part_cat_id,
        part_category_count,
        RANK() OVER (PARTITION BY inventory_id ORDER BY part_category_count DESC) AS category_rank
    FROM part_counts
)
SELECT
    inventory_id,
    part_cat_id,
    part_category_count
FROM ranked_part_categories
WHERE category_rank = 1
        );
      
  