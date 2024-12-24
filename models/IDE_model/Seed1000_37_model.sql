-- models/IDE_model/Seed1000_37_model.sql


with source_data as (
    select * from {{ ref('Seed1000_37') }}
)
select
    id,
    {{ convert_to_upperg37('name') }} as name,
    email,
    city,

    country
from source_data
