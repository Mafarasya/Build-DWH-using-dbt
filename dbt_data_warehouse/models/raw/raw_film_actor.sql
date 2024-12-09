SELECT
    CAST(actor_id AS INT) AS actor_id,
    CAST(film_id AS INT) AS film_id
FROM {{ source('dvdrental', 'film_actor') }}