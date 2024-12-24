-- models/IDE_model/Seed1000_86_model.sql


with source_data as (
    select * from {{ ref('Seed1000_86') }}
)
select
    id,
    {{ convert_to_upperg86('name') }} as name,
    email,
    city,

    country
from source_data
