-- models/errors/new_sets.sql

SELECT
    m.set_num,
    'Unknown' AS name,
    NULL AS year,
    NULL AS theme_id,
    NULL AS num_parts,
    NULL AS img_url
FROM {{ ref('missing_sets') }} m
