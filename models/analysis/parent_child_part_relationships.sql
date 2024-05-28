-- models/analysis/parent_child_part_relationships.sql

SELECT
    pr.parent_part_num,
    p1.name AS parent_name,
    pr.child_part_num,
    p2.name AS child_name
FROM
    {{ ref('part_relationships') }} AS pr
JOIN
    {{ ref('parts') }} AS p1 ON pr.parent_part_num = p1.part_num
JOIN
    {{ ref('parts') }} AS p2 ON pr.child_part_num = p2.part_num
ORDER BY
    pr.parent_part_num,
    pr.child_part_num
