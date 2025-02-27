-- models/IDE_model/Seed1000_5_model.sql


with source_data as (
    select * from {{ ref('Seed1000_5') }}
)
select
    id,
    {{ convert_to_upperg5('name') }} as name,
    email,
    city,

    country
from source_data
