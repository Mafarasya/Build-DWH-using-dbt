SELECT
    f.title,
    SUM(fp.amount) "Total Selling"
FROM
    {{ ref('fact_payment') }} fp
JOIN
    {{ ref('dim_rental') }} USING(rental_id)
JOIN 
    {{ ref('dim_inventory') }} USING(inventory_id)
JOIN 
    {{ ref('dim_film') }} f USING(film_id) 
GROUP BY 1
ORDER BY 2 DESC 
LIMIT 1