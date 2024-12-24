-- models/IDE_model/Seed1000_23_model.sql


with source_data as (
    select * from {{ ref('Seed1000_23') }}
)
select
    id,
    {{ convert_to_upperg23('name') }} as name,
    email,
    city,

    country
from source_data
