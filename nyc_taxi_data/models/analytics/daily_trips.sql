SELECT 
    EXTRACT(DAYOFWEEK FROM DATE_TRUNC(tpep_pickup_datetime, DAY)) as day_of_week,
    COUNT(*) as number_of_trips
FROM 
    {{ ref('stg_yellow_taxi') }}
GROUP BY 
    day_of_week
ORDER BY 
    number_of_trips DESC