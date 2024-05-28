-- tests/sets_year_range.sql
SELECT
    COUNT(*) AS count_invalid_years
FROM lego_db.lego_schema.sets
WHERE year < 2023 OR year > YEAR(CURRENT_DATE())
HAVING COUNT(*) > 0