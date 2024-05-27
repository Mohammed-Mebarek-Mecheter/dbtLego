SELECT
    e.element_id,
    e.part_num,
    p.name AS part_name,
    e.color_id,
    c.name AS color_name,
    e.design_id
FROM {{ source('lego_schema', 'elements') }} e
LEFT JOIN {{ ref('parts') }} p ON e.part_num = p.part_num
LEFT JOIN {{ ref('colors') }} c ON e.color_id = c.id