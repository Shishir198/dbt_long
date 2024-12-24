-- models/IDE_model/Seed1000_88_model.sql


with source_data as (
    select * from {{ ref('Seed1000_88') }}
)
select
    id,
    {{ convert_to_upperg88('name') }} as name,
    email,
    city,

    country
from source_data
