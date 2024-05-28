
  
    

        create or replace transient table lego_db.lego_schema.inventory_sets
         as
        (SELECT
    i.inventory_id,
    i.set_num,
    i.quantity,
    s.name AS set_name
FROM lego_db.lego_schema.inventory_sets i
LEFT JOIN lego_db.lego_schema.sets s ON i.set_num = s.set_num
        );
      
  