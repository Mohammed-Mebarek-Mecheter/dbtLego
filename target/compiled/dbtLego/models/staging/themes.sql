WITH RECURSIVE theme_hierarchy AS (
    SELECT
        id,
        name,
        parent_id,
        1 AS level
    FROM lego_db.lego_schema.themes
    WHERE parent_id IS NULL
    UNION ALL
    SELECT
        t.id,
        t.name,
        t.parent_id,
        th.level + 1
    FROM lego_db.lego_schema.themes t
    JOIN theme_hierarchy th ON t.parent_id = th.id
)
SELECT
    id,
    name,
    parent_id,
    level
FROM theme_hierarchy