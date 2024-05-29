select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select element_id
from lego_db.lego_schema.elements
where element_id is null



      
    ) dbt_internal_test