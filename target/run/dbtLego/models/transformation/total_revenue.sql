
  
    

        create or replace transient table lego_db.lego_schema.total_revenue
         as
        (-- models/transformation/total_revenue.sql
SELECT
    SUM(estimated_revenue) AS total_revenue
FROM lego_db.lego_schema.sets_revenue
        );
      
  