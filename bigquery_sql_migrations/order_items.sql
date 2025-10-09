CREATE OR REPLACE TABLE kevser-sandbox.orders.order_items AS
SELECT
    CAST(id AS INT64) AS id,
    CAST(order_id AS INT64) AS order_id,
    CAST(product_id AS INT64) AS product_id,
    CAST(quantity AS INT64) AS quantity,
    CAST(unit_price AS NUMERIC) AS unit_price,
    CAST(discount_percent AS NUMERIC) AS discount_percent,
    CAST(subtotal AS NUMERIC) AS subtotal,
    CAST(created_at AS TIMESTAMP) AS created_at
FROM
    UNNEST([
        STRUCT(1 AS id, 1 AS order_id, 1 AS product_id, 1 AS quantity, 2499.99 AS unit_price, 0.00 AS discount_percent, 2499.99 AS subtotal, '2025-09-10 10:00:00+10' AS created_at),
        STRUCT(2 AS id, 1 AS order_id, 2 AS product_id, 1 AS quantity, 129.50 AS unit_price, 0.00 AS discount_percent, 129.50 AS subtotal, '2025-09-10 10:00:00+10' AS created_at),
        STRUCT(3 AS id, 2 AS order_id, 3 AS product_id, 1 AS quantity, 215.00 AS unit_price, 0.00 AS discount_percent, 215.00 AS subtotal, '2025-09-15 14:30:00+10' AS created_at),
        STRUCT(4 AS id, 3 AS order_id, 4 AS product_id, 1 AS quantity, 899.00 AS unit_price, 0.00 AS discount_percent, 899.00 AS subtotal, '2025-09-12 09:20:00+10' AS created_at),
        STRUCT(5 AS id, 3 AS order_id, 2 AS product_id, 1 AS quantity, 129.50 AS unit_price, 0.00 AS discount_percent, 129.50 AS subtotal, '2025-09-12 09:20:00+10' AS created_at),
        STRUCT(6 AS id, 4 AS order_id, 4 AS product_id, 1 AS quantity, 899.00 AS unit_price, 0.00 AS discount_percent, 899.00 AS subtotal, '2025-09-18 16:45:00+10' AS created_at),
        STRUCT(7 AS id, 5 AS order_id, 1 AS product_id, 1 AS quantity, 2499.99 AS unit_price, 0.00 AS discount_percent, 2499.99 AS subtotal, '2025-09-20 11:00:00+10' AS created_at),
        STRUCT(8 AS id, 6 AS order_id, 2 AS product_id, 1 AS quantity, 129.50 AS unit_price, 0.00 AS discount_percent, 129.50 AS subtotal, '2025-09-22 13:15:00+10' AS created_at)
    ])
ORDER BY id;