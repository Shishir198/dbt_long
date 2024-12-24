-- models/IDE_model/Seed1000_49_model.sql


with source_data as (
    select * from {{ ref('Seed1000_49') }}
)
select
    id,
    {{ convert_to_upperg49('name') }} as name,
    email,
    city,

    country
from source_data
