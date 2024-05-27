SELECT
    id,
    name,
    rgb,
    is_trans
FROM {{ source('lego_schema', 'colors') }}
