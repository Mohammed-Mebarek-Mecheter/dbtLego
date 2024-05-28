
  
    

        create or replace transient table lego_db.lego_schema.new_sets
         as
        (-- models/errors/new_sets.sql

SELECT
    m.set_num,
    'Unknown' AS name,
    NULL AS year,
    NULL AS theme_id,
    NULL AS num_parts,
    NULL AS img_url
FROM lego_db.lego_schema.missing_sets m
        );
      
  