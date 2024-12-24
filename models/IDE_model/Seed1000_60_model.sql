-- models/IDE_model/Seed1000_60_model.sql


with source_data as (
    select * from {{ ref('Seed1000_60') }}
)
select
    id,
    {{ convert_to_upperg60('name') }} as name,
    email,
    city,

    country
from source_data
