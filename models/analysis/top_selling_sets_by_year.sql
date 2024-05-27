-- models/analysis/top_selling_sets_by_year.sql
SELECT
    s.year,
    s.set_num,
    s.name,
    SUM(i.quantity) AS total_quantity_sold
FROM {{ ref('inventory_sets') }} i
JOIN {{ ref('sets') }} s ON i.set_num = s.set_num
GROUP BY s.year, s.set_num, s.name
ORDER BY s.year, total_quantity_sold DESC