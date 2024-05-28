select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select part_num
from lego_db.lego_schema.parts
where part_num is null



      
    ) dbt_internal_test