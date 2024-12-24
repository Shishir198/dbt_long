-- models/IDE_model/Seed1000_72_model.sql


with source_data as (
    select * from {{ ref('Seed1000_72') }}
)
select
    id,
    {{ convert_to_upperg72('name') }} as name,
    email,
    city,

    country
from source_data
