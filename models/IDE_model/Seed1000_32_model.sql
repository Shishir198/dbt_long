-- models/IDE_model/Seed1000_32_model.sql


with source_data as (
    select * from {{ ref('Seed1000_32') }}
)
select
    id,
    {{ convert_to_upperg32('name') }} as name,
    email,
    city,

    country
from source_data
