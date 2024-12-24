-- models/IDE_model/Seed1000_25_model.sql


with source_data as (
    select * from {{ ref('Seed1000_25') }}
)
select
    id,
    {{ convert_to_upperg25('name') }} as name,
    email,
    city,

    country
from source_data
