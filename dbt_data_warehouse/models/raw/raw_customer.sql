SELECT
    CAST(customer_id AS INT) AS customer_id,
    CAST(store_id AS INT) AS store_id,
    first_name,
    last_name,
    email,
    CAST(address_id as INT) AS address_id
FROM {{ source('dvdrental', 'customer') }}