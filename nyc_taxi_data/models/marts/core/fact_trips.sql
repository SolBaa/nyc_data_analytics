WITH trips as (
    SELECT 
        CONCAT(CAST(VendorID AS STRING), '_', CAST(tpep_pickup_datetime AS STRING), '_', CAST(tpep_dropoff_datetime AS STRING)) AS trip_id,
        tpep_pickup_datetime,				
        tpep_dropoff_datetime,				
        passenger_count,				
        trip_distance,				
        RatecodeID,				
        store_and_fwd_flag,				
        PULocationID,				
        DOLocationID,				
        payment_type,				
        fare_amount,				
        extra,				
        mta_tax,				
        tip_amount,				
        tolls_amount,				
        improvement_surcharge,			
        total_amount,				
        congestion_surcharge
FROM {{ ref('stg_yellow_taxi')}}
)

select *
from trips