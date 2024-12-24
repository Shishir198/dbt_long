-- models/IDE_model/Seed1000_35_model.sql


with source_data as (
    select * from {{ ref('Seed1000_35') }}
)
select
    id,
    {{ convert_to_upperg35('name') }} as name,
    email,
    city,

    country
from source_data
