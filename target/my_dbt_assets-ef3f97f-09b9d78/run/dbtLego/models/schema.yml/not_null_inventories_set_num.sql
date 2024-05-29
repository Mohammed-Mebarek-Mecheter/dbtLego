select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select set_num
from lego_db.lego_schema.inventories
where set_num is null



      
    ) dbt_internal_test