
    
    

select
    id as unique_field,
    count(*) as n_records

from lego_db.lego_schema.themes
where id is not null
group by id
having count(*) > 1


