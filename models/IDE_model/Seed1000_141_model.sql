-- models/IDE_model/Seed1000_141_model.sql


with source_data as (
    select * from {{ ref('Seed1000_141') }}
)
select
    id,
    {{ convert_to_upperg141('name') }} as name,
    email,
    city,

    country
from source_data
