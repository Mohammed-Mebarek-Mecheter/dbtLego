-- models/analysis/sets_with_most_minifigs.sql

SELECT 
    s.set_num, 
    s.name, 
    SUM(im.quantity) AS total_minifigs 
FROM 
    {{ ref('inventory_minifigs') }} AS im
JOIN 
    {{ ref('inventories') }} AS i ON im.inventory_id = i.id 
JOIN 
    {{ ref('sets') }} AS s ON i.set_num = s.set_num 
GROUP BY 
    s.set_num, 
    s.name 
ORDER BY 
    total_minifigs DESC 
LIMIT 10
