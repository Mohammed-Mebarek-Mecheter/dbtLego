
  
    

        create or replace transient table lego_db.lego_schema.minifigs
         as
        (SELECT
    fig_num,
    name,
    num_parts,
    img_url
FROM lego_db.lego_schema.minifigs
        );
      
  