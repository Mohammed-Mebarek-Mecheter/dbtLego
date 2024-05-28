
  
    

        create or replace transient table lego_db.lego_schema.elements
         as
        (SELECT
    e.element_id,
    e.part_num,
    p.name AS part_name,
    e.color_id,
    c.name AS color_name,
    e.design_id
FROM lego_db.lego_schema.elements e
LEFT JOIN lego_db.lego_schema.parts p ON e.part_num = p.part_num
LEFT JOIN lego_db.lego_schema.colors c ON e.color_id = c.id
        );
      
  