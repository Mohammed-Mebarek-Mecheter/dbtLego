-- models/analysis/sets_by_year.sql

SELECT
    year,
    COUNT(*) AS num_sets
FROM
    {{ ref('sets') }}
GROUP BY
    year
ORDER BY
    year
