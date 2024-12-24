-- models/IDE_model/Seed1000_42_model.sql


with source_data as (
    select * from {{ ref('Seed1000_42') }}
)
select
    id,
    {{ convert_to_upperg42('name') }} as name,
    email,
    city,

    country
from source_data
