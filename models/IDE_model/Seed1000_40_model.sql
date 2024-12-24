-- models/IDE_model/Seed1000_40_model.sql


with source_data as (
    select * from {{ ref('Seed1000_40') }}
)
select
    id,
    {{ convert_to_upperg40('name') }} as name,
    email,
    city,

    country
from source_data
