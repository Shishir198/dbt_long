-- models/IDE_model/Seed1000_63_model.sql


with source_data as (
    select * from {{ ref('Seed1000_63') }}
)
select
    id,
    {{ convert_to_upperg63('name') }} as name,
    email,
    city,

    country
from source_data
