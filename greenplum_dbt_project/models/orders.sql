CREATE OR REPLACE TABLE `public.customers` AS
SELECT
    CAST(1 AS INT64) AS `id`,
    CAST('John' AS STRING) AS `first_name`,
    CAST('Doe' AS STRING) AS `last_name`,
    CAST('john.doe@email.com' AS STRING) AS `email`,
    CAST('+61-412-345-678' AS STRING) AS `phone`,
    CAST('123 Main Street' AS STRING) AS `address`,
    CAST('Melbourne' AS STRING) AS `city`,
    CAST('Australia' AS STRING) AS `country`,
    CAST('3000' AS STRING) AS `postal_code`,
    CAST(TRUE AS BOOL) AS `is_active`,
    CAST('2025-09-01 08:00:00+10' AS TIMESTAMP) AS `created_at`,
    CAST('2025-09-01 08:00:00+10' AS TIMESTAMP) AS `updated_at`
UNION ALL
SELECT
    CAST(2 AS INT64) AS `id`,
    CAST('Jane' AS STRING) AS `first_name`,
    CAST('Smith' AS STRING) AS `last_name`,
    CAST('jane.smith@email.com' AS STRING) AS `email`,
    CAST('+61-423-456-789' AS STRING) AS `phone`,
    CAST('456 Collins Street' AS STRING) AS `address`,
    CAST('Sydney' AS STRING) AS `city`,
    CAST('Australia' AS STRING) AS `country`,
    CAST('2000' AS STRING) AS `postal_code`,
    CAST(TRUE AS BOOL) AS `is_active`,
    CAST('2025-09-02 09:15:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(3 AS INT64) AS `id`,
    CAST('Michael' AS STRING) AS `first_name`,
    CAST('Johnson' AS STRING) AS `last_name`,
    CAST('m.johnson@email.com' AS STRING) AS `email`,
    CAST('+61-434-567-890' AS STRING) AS `phone`,
    CAST('789 Queen Street' AS STRING) AS `address`,
    CAST('Brisbane' AS STRING) AS `city`,
    CAST('Australia' AS STRING) AS `country`,
    CAST('4000' AS STRING) AS `postal_code`,
    CAST(TRUE AS BOOL) AS `is_active`,
    CAST('2025-09-03 10:30:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(4 AS INT64) AS `id`,
    CAST('Emily' AS STRING) AS `first_name`,
    CAST('Brown' AS STRING) AS `last_name`,
    CAST('emily.b@email.com' AS STRING) AS `email`,
    CAST('+61-445-678-901' AS STRING) AS `phone`,
    CAST('321 George Street' AS STRING) AS `address`,
    CAST('Perth' AS STRING) AS `city`,
    CAST('Australia' AS STRING) AS `country`,
    CAST('6000' AS STRING) AS `postal_code`,
    CAST(TRUE AS BOOL) AS `is_active`,
    CAST('2025-09-04 11:45:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(5 AS INT64) AS `id`,
    CAST('David' AS STRING) AS `first_name`,
    CAST('Wilson' AS STRING) AS `last_name`,
    CAST('d.wilson@email.com' AS STRING) AS `email`,
    CAST('+61-456-789-012' AS STRING) AS `phone`,
    CAST('654 King Street' AS STRING) AS `address`,
    CAST('Adelaide' AS STRING) AS `city`,
    CAST('Australia' AS STRING) AS `country`,
    CAST('5000' AS STRING) AS `postal_code`,
    CAST(FALSE AS BOOL) AS `is_active`,
    CAST('2025-09-05 13:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST('2025-09-20 14:30:00+10' AS TIMESTAMP) AS `updated_at`;

CREATE OR REPLACE TABLE `public.orders` AS
SELECT
    CAST(1 AS INT64) AS `id`,
    CAST(1 AS INT64) AS `customer_id`,
    CAST('2025-09-10 10:00:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('completed' AS STRING) AS `status`,
    CAST(2629.49 AS NUMERIC) AS `total_amount`,
    CAST('123 Main Street, Melbourne, VIC 3000' AS STRING) AS `shipping_address`,
    CAST('credit_card' AS STRING) AS `payment_method`,
    CAST('Please leave at front door' AS STRING) AS `notes`,
    CAST('2025-09-10 10:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(2 AS INT64) AS `id`,
    CAST(1 AS INT64) AS `customer_id`,
    CAST('2025-09-15 14:30:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('completed' AS STRING) AS `status`,
    CAST(215.00 AS NUMERIC) AS `total_amount`,
    CAST('123 Main Street, Melbourne, VIC 3000' AS STRING) AS `shipping_address`,
    CAST('paypal' AS STRING) AS `payment_method`,
    CAST(NULL AS STRING) AS `notes`,
    CAST('2025-09-15 14:30:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(3 AS INT64) AS `id`,
    CAST(2 AS INT64) AS `customer_id`,
    CAST('2025-09-12 09:20:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('shipped' AS STRING) AS `status`,
    CAST(1028.50 AS NUMERIC) AS `total_amount`,
    CAST('456 Collins Street, Sydney, NSW 2000' AS STRING) AS `shipping_address`,
    CAST('credit_card' AS STRING) AS `payment_method`,
    CAST(NULL AS STRING) AS `notes`,
    CAST('2025-09-12 09:20:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(4 AS INT64) AS `id`,
    CAST(3 AS INT64) AS `customer_id`,
    CAST('2025-09-18 16:45:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('processing' AS STRING) AS `status`,
    CAST(899.00 AS NUMERIC) AS `total_amount`,
    CAST('789 Queen Street, Brisbane, QLD 4000' AS STRING) AS `shipping_address`,
    CAST('bank_transfer' AS STRING) AS `payment_method`,
    CAST('Gift wrap requested' AS STRING) AS `notes`,
    CAST('2025-09-18 16:45:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(5 AS INT64) AS `id`,
    CAST(4 AS INT64) AS `customer_id`,
    CAST('2025-09-20 11:00:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('pending' AS STRING) AS `status`,
    CAST(2499.99 AS NUMERIC) AS `total_amount`,
    CAST('321 George Street, Perth, WA 6000' AS STRING) AS `shipping_address`,
    CAST('credit_card' AS STRING) AS `payment_method`,
    CAST(NULL AS STRING) AS `notes`,
    CAST('2025-09-20 11:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(6 AS INT64) AS `id`,
    CAST(2 AS INT64) AS `customer_id`,
    CAST('2025-09-22 13:15:00+10' AS TIMESTAMP) AS `order_date`,
    CAST('cancelled' AS STRING) AS `status`,
    CAST(129.50 AS NUMERIC) AS `total_amount`,
    CAST('456 Collins Street, Sydney, NSW 2000' AS STRING) AS `shipping_address`,
    CAST('paypal' AS STRING) AS `payment_method`,
    CAST('Customer requested cancellation' AS STRING) AS `notes`,
    CAST('2025-09-22 13:15:00+10' AS TIMESTAMP) AS `created_at`;

CREATE OR REPLACE TABLE `public.order_items` AS
SELECT
    CAST(1 AS INT64) AS `id`,
    CAST(1 AS INT64) AS `order_id`,
    CAST(1 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(2499.99 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(2499.99 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-10 10:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(2 AS INT64) AS `id`,
    CAST(1 AS INT64) AS `order_id`,
    CAST(2 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(129.50 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(129.50 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-10 10:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(3 AS INT64) AS `id`,
    CAST(2 AS INT64) AS `order_id`,
    CAST(3 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(215.00 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(215.00 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-15 14:30:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(4 AS INT64) AS `id`,
    CAST(3 AS INT64) AS `order_id`,
    CAST(4 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(899.00 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(899.00 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-12 09:20:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(5 AS INT64) AS `id`,
    CAST(3 AS INT64) AS `order_id`,
    CAST(2 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(129.50 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(129.50 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-12 09:20:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(6 AS INT64) AS `id`,
    CAST(4 AS INT64) AS `order_id`,
    CAST(4 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(899.00 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(899.00 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-18 16:45:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(7 AS INT64) AS `id`,
    CAST(5 AS INT64) AS `order_id`,
    CAST(1 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(2499.99 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(2499.99 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-20 11:00:00+10' AS TIMESTAMP) AS `created_at`
UNION ALL
SELECT
    CAST(8 AS INT64) AS `id`,
    CAST(6 AS INT64) AS `order_id`,
    CAST(2 AS INT64) AS `product_id`,
    CAST(1 AS INT64) AS `quantity`,
    CAST(129.50 AS NUMERIC) AS `unit_price`,
    CAST(0.00 AS NUMERIC) AS `discount_percent`,
    CAST(129.50 AS NUMERIC) AS `subtotal`,
    CAST('2025-09-22 13:15:00+10' AS TIMESTAMP) AS `created_at`