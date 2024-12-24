-- models/IDE_model/Seed1000_17_model.sql


with source_data as (
    select * from {{ ref('Seed1000_17') }}
)
select
    id,
    {{ convert_to_upperg17('name') }} as name,
    email,
    city,

    country
from source_data
