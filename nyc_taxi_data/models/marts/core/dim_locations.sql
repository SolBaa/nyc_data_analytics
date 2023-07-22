WITH locations as (
    SELECT 
        locationid,
        borough,
        zone,
        service_zone,
FROM {{ ref('stg_locations')}}
)

select *
from locations