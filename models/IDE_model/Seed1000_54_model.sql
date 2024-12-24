-- models/IDE_model/Seed1000_54_model.sql


with source_data as (
    select * from {{ ref('Seed1000_54') }}
)
select
    id,
    {{ convert_to_upperg54('name') }} as name,
    email,
    city,

    country
from source_data
