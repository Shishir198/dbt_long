-- models/IDE_model/Seed1000_48_model.sql


with source_data as (
    select * from {{ ref('Seed1000_48') }}
)
select
    id,
    {{ convert_to_upperg48('name') }} as name,
    email,
    city,

    country
from source_data
