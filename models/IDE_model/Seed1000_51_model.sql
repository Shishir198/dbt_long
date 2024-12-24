-- models/IDE_model/Seed1000_51_model.sql


with source_data as (
    select * from {{ ref('Seed1000_51') }}
)
select
    id,
    {{ convert_to_upperg51('name') }} as name,
    email,
    city,

    country
from source_data
