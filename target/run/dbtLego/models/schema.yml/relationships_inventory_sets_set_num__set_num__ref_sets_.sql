select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select set_num as from_field
    from lego_db.lego_schema.inventory_sets
    where set_num is not null
),

parent as (
    select set_num as to_field
    from lego_db.lego_schema.sets
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test