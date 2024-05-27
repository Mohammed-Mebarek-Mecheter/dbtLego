SELECT
    id,
    version,
    set_num
FROM {{ source('lego_schema', 'inventories') }}