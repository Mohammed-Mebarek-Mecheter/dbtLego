
    
    

select
    set_num as unique_field,
    count(*) as n_records

from lego_db.lego_schema.sets
where set_num is not null
group by set_num
having count(*) > 1


