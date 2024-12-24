-- models/IDE_model/Seed1000_19_model.sql


with source_data as (
    select * from {{ ref('Seed1000_19') }}
)
select
    id,
    {{ convert_to_upperg19('name') }} as name,
    email,
    city,

    country
from source_data
