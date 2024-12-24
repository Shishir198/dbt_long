-- models/IDE_model/Seed1000_110_model.sql


with source_data as (
    select * from {{ ref('Seed1000_110') }}
)
select
    id,
    {{ convert_to_upperg110('name') }} as name,
    email,
    city,

    country
from source_data
