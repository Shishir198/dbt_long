-- models/IDE_model/Seed1000_82_model.sql


with source_data as (
    select * from {{ ref('Seed1000_82') }}
)
select
    id,
    {{ convert_to_upperg82('name') }} as name,
    email,
    city,

    country
from source_data
