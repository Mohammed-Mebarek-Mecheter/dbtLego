select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select theme_id
from lego_db.lego_schema.sets
where theme_id is null



      
    ) dbt_internal_test