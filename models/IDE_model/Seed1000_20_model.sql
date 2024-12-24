-- models/IDE_model/Seed1000_20_model.sql


with source_data as (
    select * from {{ ref('Seed1000_20') }}
)
select
    id,
    {{ convert_to_upperg20('name') }} as name,
    email,
    city,

    country
from source_data
