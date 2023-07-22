select *
from {{ source('nyc_taxi', 'locations') }}