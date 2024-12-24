-- models/IDE_model/Seed1000_39_model.sql


with source_data as (
    select * from {{ ref('Seed1000_39') }}
)
select
    id,
    {{ convert_to_upperg39('name') }} as name,
    email,
    city,

    country
from source_data
