SELECT
    inventory_id,
    film_id,
    store_id
FROM {{ ref('raw_inventory') }}