-- models/IDE_model/Seed1000_145_model.sql


with source_data as (
    select * from {{ ref('Seed1000_145') }}
)
select
    id,
    {{ convert_to_upperg145('name') }} as name,
    email,
    city,

    country
from source_data