SELECT
    ip.inventory_id,
    ip.part_num,
    ip.color_id,
    ip.quantity,
    ip.is_spare,
    ip.img_url,
    p.name AS part_name,
    c.name AS color_name
FROM {{ source('lego_schema', 'inventory_parts') }} ip
LEFT JOIN {{ ref('parts') }} p ON ip.part_num = p.part_num
LEFT JOIN {{ ref('colors') }} c ON ip.color_id = c.id