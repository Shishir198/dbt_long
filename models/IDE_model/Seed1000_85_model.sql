-- models/IDE_model/Seed1000_85_model.sql


with source_data as (
    select * from {{ ref('Seed1000_85') }}
)
select
    id,
    {{ convert_to_upperg85('name') }} as name,
    email,
    city,

    country
from source_data
