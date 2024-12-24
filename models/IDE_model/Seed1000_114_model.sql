-- models/IDE_model/Seed1000_114_model.sql


with source_data as (
    select * from {{ ref('Seed1000_114') }}
)
select
    id,
    {{ convert_to_upperg114('name') }} as name,
    email,
    city,

    country
from source_data
