-- models/IDE_model/Seed1000_3_model.sql


with source_data as (
    select * from {{ ref('Seed1000_3') }}
)
select
    id,
    {{ convert_to_upperg3('name') }} as name,
    email,
    city,

    country
from source_data
