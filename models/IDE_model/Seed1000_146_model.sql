-- models/IDE_model/Seed1000_146_model.sql


with source_data as (
    select * from {{ ref('Seed1000_146') }}
)
select
    id,
    {{ convert_to_upperg146('name') }} as name,
    email,
    city,

    country
from source_data
