-- models/IDE_model/Seed1000_113_model.sql


with source_data as (
    select * from {{ ref('Seed1000_113') }}
)
select
    id,
    {{ convert_to_upperg113('name') }} as name,
    email,
    city,

    country
from source_data
