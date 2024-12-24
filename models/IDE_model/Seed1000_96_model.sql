-- models/IDE_model/Seed1000_96_model.sql


with source_data as (
    select * from {{ ref('Seed1000_96') }}
)
select
    id,
    {{ convert_to_upperg96('name') }} as name,
    email,
    city,

    country
from source_data