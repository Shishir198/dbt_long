-- models/IDE_model/Seed1000_76_model.sql


with source_data as (
    select * from {{ ref('Seed1000_76') }}
)
select
    id,
    {{ convert_to_upperg76('name') }} as name,
    email,
    city,

    country
from source_data
