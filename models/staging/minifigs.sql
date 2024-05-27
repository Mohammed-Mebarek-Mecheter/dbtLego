SELECT
    fig_num,
    name,
    num_parts,
    img_url
FROM {{ source('lego_schema', 'minifigs') }}