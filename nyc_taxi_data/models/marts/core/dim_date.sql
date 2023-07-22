WITH date AS (
    SELECT 
        format_date('%Y%m%d', tpep_pickup_datetime) AS date_id,
        extract(year from tpep_pickup_datetime) AS year,
        extract(month from tpep_pickup_datetime) AS month,
        extract(day from tpep_pickup_datetime) AS day,
        extract(DAYOFWEEK  from tpep_pickup_datetime) AS day_of_week,
        extract(DAYOFYEAR  from tpep_pickup_datetime) AS day_of_year
    FROM {{ ref('stg_yellow_taxi') }}
)

SELECT *
FROM date
