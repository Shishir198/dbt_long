-- models/IDE_model/Seed1000_58_model.sql


with source_data as (
    select * from {{ ref('Seed1000_58') }}
)
select
    id,
    {{ convert_to_upperg58('name') }} as name,
    email,
    city,

    country
from source_data
