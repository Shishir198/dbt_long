-- models/IDE_model/Seed1000_137_model.sql


with source_data as (
    select * from {{ ref('Seed1000_137') }}
)
select
    id,
    {{ convert_to_upperg137('name') }} as name,
    email,
    city,

    country
from source_data
