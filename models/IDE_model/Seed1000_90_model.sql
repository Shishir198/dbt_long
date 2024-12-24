-- models/IDE_model/Seed1000_90_model.sql


with source_data as (
    select * from {{ ref('Seed1000_90') }}
)
select
    id,
    {{ convert_to_upperg90('name') }} as name,
    email,
    city,

    country
from source_data
