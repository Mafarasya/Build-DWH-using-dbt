SELECT
    CAST(staff_id AS INT) AS staff_id,
    first_name,
    last_name,
    CAST(address_id AS INT) AS address_id,
    email,
    CAST(store_id AS INT) AS store_id,
    username
FROM {{ source('dvdrental', 'staff') }}