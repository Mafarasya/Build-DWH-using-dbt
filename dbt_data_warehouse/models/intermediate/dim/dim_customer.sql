SELECT
    customer_id,
    store_id,
    first_name,
    last_name,
    email,
    address_id
FROM {{ ref('raw_customer') }}