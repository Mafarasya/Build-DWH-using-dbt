SELECT
    *
FROM {{ source('dvdrental', 'address') }}