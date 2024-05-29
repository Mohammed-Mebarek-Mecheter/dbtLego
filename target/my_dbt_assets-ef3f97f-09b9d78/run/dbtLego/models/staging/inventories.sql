
  
    

        create or replace transient table lego_db.lego_schema.inventories
         as
        (SELECT
    id,
    version,
    set_num
FROM lego_db.lego_schema.inventories
        );
      
  