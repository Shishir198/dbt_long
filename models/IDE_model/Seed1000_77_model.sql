-- models/IDE_model/Seed1000_77_model.sql


with source_data as (
    select * from {{ ref('Seed1000_77') }}
)
select
    id,
    {{ convert_to_upperg77('name') }} as name,
    email,
    city,

    country
from source_data
