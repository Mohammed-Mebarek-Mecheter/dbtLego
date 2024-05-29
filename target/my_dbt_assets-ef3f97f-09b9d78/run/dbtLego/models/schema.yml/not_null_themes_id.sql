select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from lego_db.lego_schema.themes
where id is null



      
    ) dbt_internal_test