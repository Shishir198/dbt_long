-- models/IDE_model/Seed1000_70_model.sql


with source_data as (
    select * from {{ ref('Seed1000_70') }}
)
select
    id,
    {{ convert_to_upperg70('name') }} as name,
    email,
    city,

    country
from source_data
