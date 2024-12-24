-- models/IDE_model/Seed1000_74_model.sql


with source_data as (
    select * from {{ ref('Seed1000_74') }}
)
select
    id,
    {{ convert_to_upperg74('name') }} as name,
    email,
    city,

    country
from source_data
