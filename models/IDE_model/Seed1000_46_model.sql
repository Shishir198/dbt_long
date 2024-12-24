-- models/IDE_model/Seed1000_46_model.sql


with source_data as (
    select * from {{ ref('Seed1000_46') }}
)
select
    id,
    {{ convert_to_upperg46('name') }} as name,
    email,
    city,

    country
from source_data
