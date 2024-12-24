-- models/IDE_model/Seed1000_9_model.sql


with source_data as (
    select * from {{ ref('Seed1000_9') }}
)
select
    id,
    {{ convert_to_upperg9('name') }} as name,
    email,
    city,

    country
from source_data
