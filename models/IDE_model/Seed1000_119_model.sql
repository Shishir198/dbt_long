-- models/IDE_model/Seed1000_119_model.sql


with source_data as (
    select * from {{ ref('Seed1000_119') }}
)
select
    id,
    {{ convert_to_upperg119('name') }} as name,
    email,
    city,

    country
from source_data
