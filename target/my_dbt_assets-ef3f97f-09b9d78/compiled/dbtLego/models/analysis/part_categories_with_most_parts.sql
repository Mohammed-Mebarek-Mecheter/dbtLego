-- models/analysis/part_categories_with_most_parts.sql

SELECT
    pc.name AS category_name,
    COUNT(p.part_num) AS num_parts
FROM
    lego_db.lego_schema.part_categories AS pc
JOIN
    lego_db.lego_schema.parts AS p ON pc.id = p.part_cat_id
GROUP BY
    pc.name
ORDER BY
    num_parts DESC
LIMIT 10