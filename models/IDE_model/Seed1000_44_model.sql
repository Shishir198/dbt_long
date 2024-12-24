-- models/IDE_model/Seed1000_44_model.sql


with source_data as (
    select * from {{ ref('Seed1000_44') }}
)
select
    id,
    {{ convert_to_upperg44('name') }} as name,
    email,
    city,

    country
from source_data
