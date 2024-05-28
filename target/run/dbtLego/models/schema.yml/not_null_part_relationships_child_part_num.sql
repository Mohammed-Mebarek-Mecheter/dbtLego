select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select child_part_num
from lego_db.lego_schema.part_relationships
where child_part_num is null



      
    ) dbt_internal_test