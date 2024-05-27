SELECT
    id,
    name
FROM {{ source('lego_schema', 'part_categories') }}