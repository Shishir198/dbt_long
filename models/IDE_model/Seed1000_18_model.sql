-- models/IDE_model/Seed1000_18_model.sql


with source_data as (
    select * from {{ ref('Seed1000_18') }}
)
select
    id,
    {{ convert_to_upperg18('name') }} as name,
    email,
    city,

    country
from source_data
