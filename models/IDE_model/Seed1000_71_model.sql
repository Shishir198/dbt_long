-- models/IDE_model/Seed1000_71_model.sql


with source_data as (
    select * from {{ ref('Seed1000_71') }}
)
select
    id,
    {{ convert_to_upperg71('name') }} as name,
    email,
    city,

    country
from source_data
