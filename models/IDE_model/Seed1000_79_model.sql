-- models/IDE_model/Seed1000_79_model.sql


with source_data as (
    select * from {{ ref('Seed1000_79') }}
)
select
    id,
    {{ convert_to_upperg79('name') }} as name,
    email,
    city,

    country
from source_data
