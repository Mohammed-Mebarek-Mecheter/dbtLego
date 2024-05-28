-- models/analysis/sets_by_year.sql

SELECT
    year,
    COUNT(*) AS num_sets
FROM
    lego_db.lego_schema.sets
GROUP BY
    year
ORDER BY
    year