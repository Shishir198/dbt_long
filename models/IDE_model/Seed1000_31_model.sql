-- models/IDE_model/Seed1000_31_model.sql


with source_data as (
    select * from {{ ref('Seed1000_31') }}
)
select
    id,
    {{ convert_to_upperg31('name') }} as name,
    email,
    city,

    country
from source_data
