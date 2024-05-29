select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select color_id
from lego_db.lego_schema.inventory_parts
where color_id is null



      
    ) dbt_internal_test