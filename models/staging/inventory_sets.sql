SELECT
    i.inventory_id,
    i.set_num,
    i.quantity,
    s.name AS set_name
FROM {{ source('lego_schema', 'inventory_sets') }} i
LEFT JOIN {{ ref('sets') }} s ON i.set_num = s.set_num