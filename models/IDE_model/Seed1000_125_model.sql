-- models/IDE_model/Seed1000_125_model.sql


with source_data as (
    select * from {{ ref('Seed1000_125') }}
)
select
    id,
    {{ convert_to_upperg125('name') }} as name,
    email,
    city,

    country
from source_data
