
  
    

        create or replace transient table lego_db.lego_schema.parts_with_multiple_colors
         as
        (-- models/analysis/parts_with_multiple_colors.sql

SELECT
    p.part_num,
    p.name,
    COUNT(DISTINCT e.color_id) AS color_count
FROM
    lego_db.lego_schema.parts AS p
JOIN
    lego_db.lego_schema.elements AS e ON p.part_num = e.part_num
GROUP BY
    p.part_num,
    p.name
ORDER BY
    color_count DESC
LIMIT 10
        );
      
  