
  
    

        create or replace transient table lego_db.lego_schema.theme_popularity_over_time
         as
        (-- models/analysis/theme_popularity_over_time.sql

SELECT
    t.name AS theme_name,
    s.year,
    COUNT(*) AS num_sets
FROM
    lego_db.lego_schema.themes AS t
JOIN
    lego_db.lego_schema.sets AS s ON t.id = s.theme_id
GROUP BY
    t.name,
    s.year
ORDER BY
    s.year,
    num_sets DESC
        );
      
  