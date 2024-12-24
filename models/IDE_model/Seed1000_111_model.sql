-- models/IDE_model/Seed1000_111_model.sql


with source_data as (
    select * from {{ ref('Seed1000_111') }}
)
select
    id,
    {{ convert_to_upperg111('name') }} as name,
    email,
    city,

    country
from source_data
