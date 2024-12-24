-- models/IDE_model/Seed1000_109_model.sql


with source_data as (
    select * from {{ ref('Seed1000_109') }}
)
select
    id,
    {{ convert_to_upperg109('name') }} as name,
    email,
    city,

    country
from source_data
