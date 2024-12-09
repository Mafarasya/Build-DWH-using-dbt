SELECT
    CAST(inventory_id AS INT) AS inventory_id,
    CAST(film_id AS INT) AS film_id,
    CAST(store_id AS INT) AS store_id
FROM {{ source('dvdrental', 'inventory') }}