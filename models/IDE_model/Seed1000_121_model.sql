-- models/IDE_model/Seed1000_121_model.sql


with source_data as (
    select * from {{ ref('Seed1000_121') }}
)
select
    id,
    {{ convert_to_upperg121('name') }} as name,
    email,
    city,

    country
from source_data
