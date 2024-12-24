-- models/IDE_model/Seed1000_64_model.sql


with source_data as (
    select * from {{ ref('Seed1000_64') }}
)
select
    id,
    {{ convert_to_upperg64('name') }} as name,
    email,
    city,

    country
from source_data
