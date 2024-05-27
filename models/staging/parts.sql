SELECT
    p.part_num,
    p.name,
    p.part_cat_id,
    p.part_material,
    pc.name AS category_name
FROM {{ source('lego_schema', 'parts') }} p
LEFT JOIN {{ ref('part_categories') }} pc ON p.part_cat_id = pc.id