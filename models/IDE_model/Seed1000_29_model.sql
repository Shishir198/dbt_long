-- models/IDE_model/Seed1000_29_model.sql


with source_data as (
    select * from {{ ref('Seed1000_29') }}
)
select
    id,
    {{ convert_to_upperg29('name') }} as name,
    email,
    city,

    country
from source_data
