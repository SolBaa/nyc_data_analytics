SELECT 
    EXTRACT(HOUR FROM tpep_pickup_datetime) as hour_of_day,
    COUNT(*) as number_of_trips
FROM 
    {{ ref('stg_yellow_taxi') }}
GROUP BY 
    hour_of_day
ORDER BY 
    number_of_trips DESC
