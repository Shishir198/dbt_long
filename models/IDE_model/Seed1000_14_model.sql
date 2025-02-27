-- models/IDE_model/Seed1000_14_model.sql


with source_data as (
    select * from {{ ref('Seed1000_14') }}
)
select
    id,
    {{ convert_to_upperg14('name') }} as name,
    email,
    city,

    country
from source_data
