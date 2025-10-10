CREATE OR REPLACE TABLE `public.products` AS
SELECT
    CAST(1 AS INT64) AS `id`,
    CAST('Laptop Pro X1' AS STRING) AS `name`,
    CAST('15-inch powerhouse for professionals.' AS STRING) AS `description`,
    CAST(2499.99 AS NUMERIC) AS `price`,
    CAST('LPX1-2025' AS STRING) AS `sku`,
    CAST(TRUE AS BOOL) AS `in_stock`,
    CAST('2025-09-15 10:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(2 AS INT64) AS `id`,
    CAST('Wireless Mouse G5' AS STRING) AS `name`,
    CAST('Ergonomic mouse with 8 programmable buttons.' AS STRING) AS `description`,
    CAST(129.50 AS NUMERIC) AS `price`,
    CAST('WMG5-2025' AS STRING) AS `sku`,
    CAST(TRUE AS BOOL) AS `in_stock`,
    CAST('2025-09-15 10:05:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(3 AS INT64) AS `id`,
    CAST('Mechanical Keyboard K9' AS STRING) AS `name`,
    CAST('RGB backlit keyboard for gaming and typing.' AS STRING) AS `description`,
    CAST(215.00 AS NUMERIC) AS `price`,
    CAST('MKK9-2025' AS STRING) AS `sku`,
    CAST(FALSE AS BOOL) AS `in_stock`,
    CAST('2025-09-18 11:30:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(4 AS INT64) AS `id`,
    CAST('4K Ultra HD Monitor' AS STRING) AS `name`,
    CAST('27-inch monitor with stunning color accuracy.' AS STRING) AS `description`,
    CAST(899.00 AS NUMERIC) AS `price`,
    CAST('M4KU-2025' AS STRING) AS `sku`,
    CAST(TRUE AS BOOL) AS `in_stock`,
    CAST('2025-09-21 14:00:00+10' AS TIMESTAMP) AS `created_at`