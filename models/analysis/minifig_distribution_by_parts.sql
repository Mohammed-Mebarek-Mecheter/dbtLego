-- models/analysis/minifig_distribution_by_parts.sql

SELECT
    num_parts,
    COUNT(*) AS num_minifigs
FROM
    {{ ref('minifigs') }}
GROUP BY
    num_parts
ORDER BY
    num_parts
