-- models/IDE_model/Seed1000_144_model.sql


with source_data as (
    select * from {{ ref('Seed1000_144') }}
)
select
    id,
    {{ convert_to_upperg144('name') }} as name,
    email,
    city,

    country
from source_data
