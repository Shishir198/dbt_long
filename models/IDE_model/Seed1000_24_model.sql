-- models/IDE_model/Seed1000_24_model.sql


with source_data as (
    select * from {{ ref('Seed1000_24') }}
)
select
    id,
    {{ convert_to_upperg24('name') }} as name,
    email,
    city,

    country
from source_data
