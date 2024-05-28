
  
    

        create or replace transient table lego_db.lego_schema.colors
         as
        (SELECT
    id,
    name,
    rgb,
    is_trans
FROM lego_db.lego_schema.colors
        );
      
  