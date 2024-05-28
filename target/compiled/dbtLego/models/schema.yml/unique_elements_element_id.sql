
    
    

select
    element_id as unique_field,
    count(*) as n_records

from lego_db.lego_schema.elements
where element_id is not null
group by element_id
having count(*) > 1


