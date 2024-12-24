-- models/IDE_model/Seed1000_135_model.sql


with source_data as (
    select * from {{ ref('Seed1000_135') }}
)
select
    id,
    {{ convert_to_upperg135('name') }} as name,
    email,
    city,

    country
from source_data
