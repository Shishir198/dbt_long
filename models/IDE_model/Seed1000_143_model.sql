-- models/IDE_model/Seed1000_143_model.sql


with source_data as (
    select * from {{ ref('Seed1000_143') }}
)
select
    id,
    {{ convert_to_upperg143('name') }} as name,
    email,
    city,

    country
from source_data
