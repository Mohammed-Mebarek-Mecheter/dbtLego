-- models/analysis/avg_parts_per_set_by_year.sql

SELECT
    year,
    AVG(num_parts) AS avg_num_parts
FROM
    lego_db.lego_schema.sets
GROUP BY
    year
ORDER BY
    year