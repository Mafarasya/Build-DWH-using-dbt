SELECT
    TO_CHAR(payment_date, 'Month') "Month",
    SUM(amount) "Total Amount"
FROM {{ ref('fact_payment') }}
GROUP BY 1
ORDER BY 2 DESC