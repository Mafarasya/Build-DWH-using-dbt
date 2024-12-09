SELECT
    film_id,
    title,
    description,
    release_year,
    rental_duration,
    rental_rate,
    length,
    replacement_cost,
    rating
FROM {{ ref('raw_film') }}