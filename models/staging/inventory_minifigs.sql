SELECT
    im.inventory_id,
    im.fig_num,
    im.quantity,
    m.name AS minifig_name
FROM {{ source('lego_schema', 'inventory_minifigs') }} im
LEFT JOIN {{ ref('minifigs') }} m ON im.fig_num = m.fig_num