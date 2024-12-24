-- models/IDE_model/Seed1000_124_model.sql


with source_data as (
    select * from {{ ref('Seed1000_124') }}
)
select
    id,
    {{ convert_to_upperg124('name') }} as name,
    email,
    city,

    country
from source_data
