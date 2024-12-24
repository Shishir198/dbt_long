-- models/IDE_model/Seed1000_75_model.sql


with source_data as (
    select * from {{ ref('Seed1000_75') }}
)
select
    id,
    {{ convert_to_upperg75('name') }} as name,
    email,
    city,

    country
from source_data
