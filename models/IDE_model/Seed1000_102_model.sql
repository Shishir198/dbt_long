-- models/IDE_model/Seed1000_102_model.sql


with source_data as (
    select * from {{ ref('Seed1000_102') }}
)
select
    id,
    {{ convert_to_upperg102('name') }} as name,
    email,
    city,

    country
from source_data
