SELECT
    pr.rel_type,
    pr.child_part_num,
    cp.name AS child_part_name,
    pr.parent_part_num,
    pp.name AS parent_part_name
FROM lego_db.lego_schema.part_relationships pr
LEFT JOIN lego_db.lego_schema.parts cp ON pr.child_part_num = cp.part_num
LEFT JOIN lego_db.lego_schema.parts pp ON pr.parent_part_num = pp.part_num