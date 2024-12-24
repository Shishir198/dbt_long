-- models/IDE_model/Seed1000_21_model.sql


with source_data as (
    select * from {{ ref('Seed1000_21') }}
)
select
    id,
    {{ convert_to_upperg21('name') }} as name,
    email,
    city,

    country
from source_data
