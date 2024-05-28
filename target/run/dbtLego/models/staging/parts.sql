
  
    

        create or replace transient table lego_db.lego_schema.parts
         as
        (SELECT
    p.part_num,
    p.name,
    p.part_cat_id,
    p.part_material,
    pc.name AS category_name
FROM lego_db.lego_schema.parts p
LEFT JOIN lego_db.lego_schema.part_categories pc ON p.part_cat_id = pc.id
        );
      
  