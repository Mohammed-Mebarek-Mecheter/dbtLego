SELECT
    s.set_num,
    s.name,
    s.year,
    s.theme_id,
    s.num_parts,
    s.img_url,
    t.name AS theme_name
FROM lego_db.lego_schema.sets s
LEFT JOIN lego_db.lego_schema.themes t ON s.theme_id = t.id