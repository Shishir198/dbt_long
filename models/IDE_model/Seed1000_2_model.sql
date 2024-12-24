-- models/IDE_model/Seed1000_2_model.sql


with source_data as (
    select * from {{ ref('Seed1000_2') }}
)
select
    id,
    {{ convert_to_upperg2('name') }} as name,
    email,
    city,

    country
from source_data
