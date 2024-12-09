SELECT
    staff_id,
    first_name,
    last_name,
    address_id,
    email,
    store_id,
    username
FROM {{ ref('raw_staff') }}