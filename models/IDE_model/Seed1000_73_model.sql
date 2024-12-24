-- models/IDE_model/Seed1000_73_model.sql


with source_data as (
    select * from {{ ref('Seed1000_73') }}
)
select
    id,
    {{ convert_to_upperg73('name') }} as name,
    email,
    city,

    country
from source_data
