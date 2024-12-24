-- models/IDE_model/Seed1000_38_model.sql


with source_data as (
    select * from {{ ref('Seed1000_38') }}
)
select
    id,
    {{ convert_to_upperg38('name') }} as name,
    email,
    city,

    country
from source_data