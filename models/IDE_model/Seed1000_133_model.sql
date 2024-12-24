-- models/IDE_model/Seed1000_133_model.sql


with source_data as (
    select * from {{ ref('Seed1000_133') }}
)
select
    id,
    {{ convert_to_upperg133('name') }} as name,
    email,
    city,

    country
from source_data
