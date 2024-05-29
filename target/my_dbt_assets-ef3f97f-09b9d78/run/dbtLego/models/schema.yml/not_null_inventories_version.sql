select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select version
from lego_db.lego_schema.inventories
where version is null



      
    ) dbt_internal_test