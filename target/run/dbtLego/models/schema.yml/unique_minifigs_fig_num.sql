select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    fig_num as unique_field,
    count(*) as n_records

from lego_db.lego_schema.minifigs
where fig_num is not null
group by fig_num
having count(*) > 1



      
    ) dbt_internal_test