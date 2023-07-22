WITH time AS (
    SELECT 
        format_datetime('%H%M%S', tpep_pickup_datetime) AS time_id,
        extract(hour from tpep_pickup_datetime) AS hour,
        extract(minute from tpep_pickup_datetime) AS minute,
        extract(second from tpep_pickup_datetime) AS second
    FROM {{ ref('stg_yellow_taxi') }}
)

SELECT *
FROM time
