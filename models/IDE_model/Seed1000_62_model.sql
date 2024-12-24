-- models/IDE_model/Seed1000_62_model.sql


with source_data as (
    select * from {{ ref('Seed1000_62') }}
)
select
    id,
    {{ convert_to_upperg62('name') }} as name,
    email,
    city,

    country
from source_data
