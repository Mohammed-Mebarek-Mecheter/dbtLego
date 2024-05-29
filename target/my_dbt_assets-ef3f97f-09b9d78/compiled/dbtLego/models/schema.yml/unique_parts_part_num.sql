
    
    

select
    part_num as unique_field,
    count(*) as n_records

from lego_db.lego_schema.parts
where part_num is not null
group by part_num
having count(*) > 1


