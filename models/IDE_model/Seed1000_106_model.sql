-- models/IDE_model/Seed1000_106_model.sql


with source_data as (
    select * from {{ ref('Seed1000_106') }}
)
select
    id,
    {{ convert_to_upperg106('name') }} as name,
    email,
    city,

    country
from source_data
