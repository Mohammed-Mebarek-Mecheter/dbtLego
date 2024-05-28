
  
    

        create or replace transient table lego_db.lego_schema.inventory_minifigs
         as
        (SELECT
    im.inventory_id,
    im.fig_num,
    im.quantity,
    m.name AS minifig_name
FROM lego_db.lego_schema.inventory_minifigs im
LEFT JOIN lego_db.lego_schema.minifigs m ON im.fig_num = m.fig_num
        );
      
  