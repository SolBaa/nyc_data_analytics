select *
from {{ source('nyc_taxi', 'yellow_taxi') }}