CREATE OR REPLACE TABLE kevser-sandbox.products.products AS
SELECT
    CAST(id AS INT64) AS id,
    CAST(name AS STRING) AS name,
    CAST(description AS STRING) AS description,
    CAST(price AS NUMERIC) AS price,
    CAST(sku AS STRING) AS sku,
    CAST(in_stock AS BOOL) AS in_stock,
    CAST(created_at AS TIMESTAMP) AS created_at
FROM
    UNNEST([
        STRUCT(1 AS id, 'Laptop Pro X1' AS name, '15-inch powerhouse for professionals.' AS description, 2499.99 AS price, 'LPX1-2025' AS sku, TRUE AS in_stock, '2025-09-15 10:00:00+10' AS created_at),
        STRUCT(2 AS id, 'Wireless Mouse G5' AS name, 'Ergonomic mouse with 8 programmable buttons.' AS description, 129.50 AS price, 'WMG5-2025' AS sku, TRUE AS in_stock, '2025-09-15 10:05:00+10' AS created_at),
        STRUCT(3 AS id, 'Mechanical Keyboard K9' AS name, 'RGB backlit keyboard for gaming and typing.' AS description, 215.00 AS price, 'MKK9-2025' AS sku, FALSE AS in_stock, '2025-09-18 11:30:00+10' AS created_at),
        STRUCT(4 AS id, '4K Ultra HD Monitor' AS name, '27-inch monitor with stunning color accuracy.' AS description, 899.00 AS price, 'M4KU-2025' AS sku, TRUE AS in_stock, '2025-09-21 14:00:00+10' AS created_at)
    ])
ORDER BY id;