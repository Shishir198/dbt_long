-- models/IDE_model/Seed1000_13_model.sql


with source_data as (
    select * from {{ ref('Seed1000_13') }}
)
select
    id,
    {{ convert_to_upperg13('name') }} as name,
    email,
    city,

    country
from source_data
