-- models/transformation/total_revenue.sql
SELECT
    SUM(estimated_revenue) AS total_revenue
FROM {{ ref('sets_revenue') }}