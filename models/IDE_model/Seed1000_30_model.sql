-- models/IDE_model/Seed1000_30_model.sql


with source_data as (
    select * from {{ ref('Seed1000_30') }}
)
select
    id,
    {{ convert_to_upperg30('name') }} as name,
    email,
    city,

    country
from source_data
