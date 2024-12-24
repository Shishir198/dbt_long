-- models/IDE_model/Seed1000_83_model.sql


with source_data as (
    select * from {{ ref('Seed1000_83') }}
)
select
    id,
    {{ convert_to_upperg83('name') }} as name,
    email,
    city,

    country
from source_data
