
    
    

with child as (
    select part_num as from_field
    from lego_db.lego_schema.elements
    where part_num is not null
),

parent as (
    select part_num as to_field
    from lego_db.lego_schema.parts
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


