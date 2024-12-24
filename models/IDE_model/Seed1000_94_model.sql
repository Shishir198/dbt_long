-- models/IDE_model/Seed1000_94_model.sql


with source_data as (
    select * from {{ ref('Seed1000_94') }}
)
select
    id,
    {{ convert_to_upperg94('name') }} as name,
    email,
    city,

    country
from source_data