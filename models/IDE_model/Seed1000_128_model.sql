-- models/IDE_model/Seed1000_128_model.sql


with source_data as (
    select * from {{ ref('Seed1000_128') }}
)
select
    id,
    {{ convert_to_upperg128('name') }} as name,
    email,
    city,

    country
from source_data
