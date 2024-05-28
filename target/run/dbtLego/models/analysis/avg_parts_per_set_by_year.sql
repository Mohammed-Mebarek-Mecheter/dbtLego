
  
    

        create or replace transient table lego_db.lego_schema.avg_parts_per_set_by_year
         as
        (-- models/analysis/avg_parts_per_set_by_year.sql

SELECT
    year,
    AVG(num_parts) AS avg_num_parts
FROM
    lego_db.lego_schema.sets
GROUP BY
    year
ORDER BY
    year
        );
      
  