-- models/analysis/theme_popularity_over_time.sql

SELECT
    t.name AS theme_name,
    s.year,
    COUNT(*) AS num_sets
FROM
    {{ ref('themes') }} AS t
JOIN
    {{ ref('sets') }} AS s ON t.id = s.theme_id
GROUP BY
    t.name,
    s.year
ORDER BY
    s.year,
    num_sets DESC
