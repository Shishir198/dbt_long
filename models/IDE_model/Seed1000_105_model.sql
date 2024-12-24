-- models/IDE_model/Seed1000_105_model.sql


with source_data as (
    select * from {{ ref('Seed1000_105') }}
)
select
    id,
    {{ convert_to_upperg105('name') }} as name,
    email,
    city,

    country
from source_data
