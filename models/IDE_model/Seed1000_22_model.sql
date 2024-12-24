-- models/IDE_model/Seed1000_22_model.sql


with source_data as (
    select * from {{ ref('Seed1000_22') }}
)
select
    id,
    {{ convert_to_upperg22('name') }} as name,
    email,
    city,

    country
from source_data
