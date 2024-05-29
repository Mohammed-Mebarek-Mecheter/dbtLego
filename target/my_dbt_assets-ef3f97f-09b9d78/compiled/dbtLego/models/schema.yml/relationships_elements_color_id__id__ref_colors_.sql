
    
    

with child as (
    select color_id as from_field
    from lego_db.lego_schema.elements
    where color_id is not null
),

parent as (
    select id as to_field
    from lego_db.lego_schema.colors
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


