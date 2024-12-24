-- models/IDE_model/Seed1000_95_model.sql


with source_data as (
    select * from {{ ref('Seed1000_95') }}
)
select
    id,
    {{ convert_to_upperg95('name') }} as name,
    email,
    city,

    country
from source_data
