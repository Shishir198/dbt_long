-- models/IDE_model/Seed1000_12_model.sql


with source_data as (
    select * from {{ ref('Seed1000_12') }}
)
select
    id,
    {{ convert_to_upperg12('name') }} as name,
    email,
    city,

    country
from source_data
