CREATE OR REPLACE TABLE kevser-sandbox.orders.orders AS
SELECT
    CAST(id AS INT64) AS id,
    CAST(customer_id AS INT64) AS customer_id,
    CAST(order_date AS TIMESTAMP) AS order_date,
    CAST(status AS STRING) AS status,
    CAST(total_amount AS NUMERIC) AS total_amount,
    CAST(shipping_address AS STRING) AS shipping_address,
    CAST(payment_method AS STRING) AS payment_method,
    CAST(REPLACE(notes, '\N', NULL) AS STRING) AS notes,
    CAST(created_at AS TIMESTAMP) AS created_at
FROM
    UNNEST([
        STRUCT(1 AS id, 1 AS customer_id, '2025-09-10 10:00:00+10' AS order_date, 'completed' AS status, 2629.49 AS total_amount, '123 Main Street, Melbourne, VIC 3000' AS shipping_address, 'credit_card' AS payment_method, 'Please leave at front door' AS notes, '2025-09-10 10:00:00+10' AS created_at),
        STRUCT(2 AS id, 1 AS customer_id, '2025-09-15 14:30:00+10' AS order_date, 'completed' AS status, 215.00 AS total_amount, '123 Main Street, Melbourne, VIC 3000' AS shipping_address, 'paypal' AS payment_method, NULL AS notes, '2025-09-15 14:30:00+10' AS created_at),
        STRUCT(3 AS id, 2 AS customer_id, '2025-09-12 09:20:00+10' AS order_date, 'shipped' AS status, 1028.50 AS total_amount, '456 Collins Street, Sydney, NSW 2000' AS shipping_address, 'credit_card' AS payment_method, NULL AS notes, '2025-09-12 09:20:00+10' AS created_at),
        STRUCT(4 AS id, 3 AS customer_id, '2025-09-18 16:45:00+10' AS order_date, 'processing' AS status, 899.00 AS total_amount, '789 Queen Street, Brisbane, QLD 4000' AS shipping_address, 'bank_transfer' AS payment_method, 'Gift wrap requested' AS notes, '2025-09-18 16:45:00+10' AS created_at),
        STRUCT(5 AS id, 4 AS customer_id, '2025-09-20 11:00:00+10' AS order_date, 'pending' AS status, 2499.99 AS total_amount, '321 George Street, Perth, WA 6000' AS shipping_address, 'credit_card' AS payment_method, NULL AS notes, '2025-09-20 11:00:00+10' AS created_at),
        STRUCT(6 AS id, 2 AS customer_id, '2025-09-22 13:15:00+10' AS order_date, 'cancelled' AS status, 129.50 AS total_amount, '456 Collins Street, Sydney, NSW 2000' AS shipping_address, 'paypal' AS payment_method, 'Customer requested cancellation' AS notes, '2025-09-22 13:15:00+10' AS created_at)
    ])
ORDER BY id;