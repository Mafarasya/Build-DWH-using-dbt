SELECT
    CAST(actor_id AS INT) AS actor_id,
    first_name,
    last_name
FROM {{ source('dvdrental', 'actor') }}