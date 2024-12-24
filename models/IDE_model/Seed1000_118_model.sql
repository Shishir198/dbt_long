-- models/IDE_model/Seed1000_118_model.sql


with source_data as (
    select * from {{ ref('Seed1000_118') }}
)
select
    id,
    {{ convert_to_upperg118('name') }} as name,
    email,
    city,

    country
from source_data
