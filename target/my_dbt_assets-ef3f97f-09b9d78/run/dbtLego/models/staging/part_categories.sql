
  
    

        create or replace transient table lego_db.lego_schema.part_categories
         as
        (SELECT
    id,
    name
FROM lego_db.lego_schema.part_categories
        );
      
  