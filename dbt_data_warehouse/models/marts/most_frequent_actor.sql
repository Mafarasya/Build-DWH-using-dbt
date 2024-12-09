WITH frequent_actors AS (
    SELECT
	    da.first_name first_name,
	    da.last_name last_name,
	    COUNT(dfa.film_id) "Role Total"
    FROM 
	    {{ ref('dim_film_actor') }} dfa 
    JOIN 
	    {{ ref('dim_actor') }} da USING(actor_id) 
    GROUP BY 1, 2
    ORDER BY "Role Total" DESC
)

SELECT 
    CONCAT(first_name, ' ', last_name) "Name",
    "Role Total"
FROM 
    frequent_actors
LIMIT 1
