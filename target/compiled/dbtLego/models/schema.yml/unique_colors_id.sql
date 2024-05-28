
    
    

select
    id as unique_field,
    count(*) as n_records

from lego_db.lego_schema.colors
where id is not null
group by id
having count(*) > 1


