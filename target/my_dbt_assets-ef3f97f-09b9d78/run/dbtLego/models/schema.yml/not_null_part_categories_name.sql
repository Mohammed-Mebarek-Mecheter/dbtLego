select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select name
from lego_db.lego_schema.part_categories
where name is null



      
    ) dbt_internal_test