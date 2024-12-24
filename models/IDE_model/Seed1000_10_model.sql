-- models/IDE_model/Seed1000_10_model.sql


with source_data as (
    select * from {{ ref('Seed1000_10') }}
)
select
    id,
    {{ convert_to_upperg10('name') }} as name,
    email,
    city,

    country
from source_data
