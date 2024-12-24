-- models/IDE_model/Seed1000_89_model.sql


with source_data as (
    select * from {{ ref('Seed1000_89') }}
)
select
    id,
    {{ convert_to_upperg89('name') }} as name,
    email,
    city,

    country
from source_data
