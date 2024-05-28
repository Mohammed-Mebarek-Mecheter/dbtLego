-- models/transformation/total_revenue.sql
SELECT
    SUM(estimated_revenue) AS total_revenue
FROM lego_db.lego_schema.sets_revenue