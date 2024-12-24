-- models/IDE_model/Seed1000_4_model.sql


with source_data as (
    select * from {{ ref('Seed1000_4') }}
)
select
    id,
    {{ convert_to_upperg4('name') }} as name,
    email,
    city,

    country
from source_data
