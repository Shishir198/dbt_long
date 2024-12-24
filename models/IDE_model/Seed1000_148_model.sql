-- models/IDE_model/Seed1000_148_model.sql


with source_data as (
    select * from {{ ref('Seed1000_148') }}
)
select
    id,
    {{ convert_to_upperg148('name') }} as name,
    email,
    city,

    country
from source_data
