-- models/transformation/sets_revenue.sql
SELECT
    i.inventory_id,
    i.set_num,
    s.name AS set_name,
    s.num_parts,
    i.quantity,
    s.num_parts * i.quantity AS total_parts,
    (s.num_parts * i.quantity) * 0.1 AS estimated_revenue -- Assuming $0.1 per part
FROM {{ ref('inventory_sets') }} i
JOIN {{ ref('sets') }} s ON i.set_num = s.set_num