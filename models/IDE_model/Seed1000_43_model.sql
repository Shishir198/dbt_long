-- models/IDE_model/Seed1000_43_model.sql


with source_data as (
    select * from {{ ref('Seed1000_43') }}
)
select
    id,
    {{ convert_to_upperg43('name') }} as name,
    email,
    city,

    country
from source_data
