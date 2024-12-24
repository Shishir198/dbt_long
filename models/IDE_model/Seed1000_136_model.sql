-- models/IDE_model/Seed1000_136_model.sql


with source_data as (
    select * from {{ ref('Seed1000_136') }}
)
select
    id,
    {{ convert_to_upperg136('name') }} as name,
    email,
    city,

    country
from source_data
