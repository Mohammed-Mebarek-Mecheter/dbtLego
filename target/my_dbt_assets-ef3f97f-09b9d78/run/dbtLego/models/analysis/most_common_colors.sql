
  
    

        create or replace transient table lego_db.lego_schema.most_common_colors
         as
        (-- models/analysis/most_common_colors.sql

SELECT
    c.name AS color_name,
    COUNT(*) AS part_count
FROM
    lego_db.lego_schema.inventory_parts AS ip
JOIN
    lego_db.lego_schema.colors AS c ON ip.color_id = c.id
GROUP BY
    c.name
ORDER BY
    part_count DESC
LIMIT 10
        );
      
  