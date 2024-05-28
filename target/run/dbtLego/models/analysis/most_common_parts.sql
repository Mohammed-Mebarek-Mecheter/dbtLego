
  
    

        create or replace transient table lego_db.lego_schema.most_common_parts
         as
        (-- models/analysis/most_common_parts.sql

SELECT
    ip.part_num,
    p.name,
    SUM(ip.quantity) AS total_quantity
FROM
    lego_db.lego_schema.inventory_parts AS ip
JOIN
    lego_db.lego_schema.parts AS p ON ip.part_num = p.part_num
GROUP BY
    ip.part_num,
    p.name
ORDER BY
    total_quantity DESC
LIMIT 10
        );
      
  