-- models/IDE_model/Seed1000_115_model.sql


with source_data as (
    select * from {{ ref('Seed1000_115') }}
)
select
    id,
    {{ convert_to_upperg115('name') }} as name,
    email,
    city,

    country
from source_data