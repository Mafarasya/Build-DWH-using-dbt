SELECT
    CAST(payment_id AS INT) AS payment_id,
    CAST(customer_id AS INT) AS customer_id,
    CAST(staff_id AS INT) AS staff_id,
    CAST(rental_id AS INT) AS rental_id,
    amount,
    payment_date
FROM {{ source('dvdrental', 'payment') }}