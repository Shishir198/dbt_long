-- models/IDE_model/Seed1000_91_model.sql


with source_data as (
    select * from {{ ref('Seed1000_91') }}
)
select
    id,
    {{ convert_to_upperg91('name') }} as name,
    email,
    city,

    country
from source_data
