-- models/IDE_model/Seed1000_34_model.sql


with source_data as (
    select * from {{ ref('Seed1000_34') }}
)
select
    id,
    {{ convert_to_upperg34('name') }} as name,
    email,
    city,

    country
from source_data
