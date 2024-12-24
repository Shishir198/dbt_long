-- models/IDE_model/Seed1000_100_model.sql


with source_data as (
    select * from {{ ref('Seed1000_100') }}
)
select
    id,
    {{ convert_to_upperg100('name') }} as name,
    email,
    city,

    country
from source_data
