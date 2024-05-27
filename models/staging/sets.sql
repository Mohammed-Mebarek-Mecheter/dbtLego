SELECT
    s.set_num,
    s.name,
    s.year,
    s.theme_id,
    s.num_parts,
    s.img_url,
    t.name AS theme_name
FROM {{ source('lego_schema', 'sets') }} s
LEFT JOIN {{ ref('themes') }} t ON s.theme_id = t.id