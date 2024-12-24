-- models/IDE_model/Seed1000_6_model.sql


with source_data as (
    select * from {{ ref('Seed1000_6') }}
)
select
    id,
    {{ convert_to_upperg6('name') }} as name,
    email,
    city,

    country
from source_data
