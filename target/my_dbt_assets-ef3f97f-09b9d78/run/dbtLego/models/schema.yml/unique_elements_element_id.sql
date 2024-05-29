select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    element_id as unique_field,
    count(*) as n_records

from lego_db.lego_schema.elements
where element_id is not null
group by element_id
having count(*) > 1



      
    ) dbt_internal_test