CREATE OR REPLACE TABLE kevser-sandbox.orders.customers AS
SELECT
    CAST(id AS INT64) AS id,
    CAST(first_name AS STRING) AS first_name,
    CAST(last_name AS STRING) AS last_name,
    CAST(email AS STRING) AS email,
    CAST(phone AS STRING) AS phone,
    CAST(address AS STRING) AS address,
    CAST(city AS STRING) AS city,
    CAST(country AS STRING) AS country,
    CAST(postal_code AS STRING) AS postal_code,
    CAST(is_active AS BOOL) AS is_active,
    CAST(created_at AS TIMESTAMP) AS created_at,
    CAST(updated_at AS TIMESTAMP) AS updated_at
FROM
    UNNEST([
        STRUCT(1 AS id, 'John' AS first_name, 'Doe' AS last_name, 'john.doe@email.com' AS email, '+61-412-345-678' AS phone, '123 Main Street' AS address, 'Melbourne' AS city, 'Australia' AS country, '3000' AS postal_code, TRUE AS is_active, '2025-09-01 08:00:00+10' AS created_at, '2025-09-01 08:00:00+10' AS updated_at),
        STRUCT(2 AS id, 'Jane' AS first_name, 'Smith' AS last_name, 'jane.smith@email.com' AS email, '+61-423-456-789' AS phone, '456 Collins Street' AS address, 'Sydney' AS city, 'Australia' AS country, '2000' AS postal_code, TRUE AS is_active, '2025-09-02 09:15:00+10' AS created_at, '2025-09-02 09:15:00+10' AS updated_at),
        STRUCT(3 AS id, 'Michael' AS first_name, 'Johnson' AS last_name, 'm.johnson@email.com' AS email, '+61-434-567-890' AS phone, '789 Queen Street' AS address, 'Brisbane' AS city, 'Australia' AS country, '4000' AS postal_code, TRUE AS is_active, '2025-09-03 10:30:00+10' AS created_at, '2025-09-03 10:30:00+10' AS updated_at),
        STRUCT(4 AS id, 'Emily' AS first_name, 'Brown' AS last_name, 'emily.b@email.com' AS email, '+61-445-678-901' AS phone, '321 George Street' AS address, 'Perth' AS city, 'Australia' AS country, '6000' AS postal_code, TRUE AS is_active, '2025-09-04 11:45:00+10' AS created_at, '2025-09-04 11:45:00+10' AS updated_at),
        STRUCT(5 AS id, 'David' AS first_name, 'Wilson' AS last_name, 'd.wilson@email.com' AS email, '+61-456-789-012' AS phone, '654 King Street' AS address, 'Adelaide' AS city, 'Australia' AS country, '5000' AS postal_code, FALSE AS is_active, '2025-09-05 13:00:00+10' AS created_at, '2025-09-20 14:30:00+10' AS updated_at)
    ])
ORDER BY id;