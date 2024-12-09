SELECT
    CAST(film_id AS INT) AS film_id,
    title,
    description,
    release_year,
    rental_duration,
    rental_rate,
    length,
    replacement_cost,
    rating
FROM {{ source('dvdrental', 'film') }}