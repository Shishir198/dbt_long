-- models/IDE_model/Seed1000_81_model.sql


with source_data as (
    select * from {{ ref('Seed1000_81') }}
)
select
    id,
    {{ convert_to_upperg81('name') }} as name,
    email,
    city,

    country
from source_data
