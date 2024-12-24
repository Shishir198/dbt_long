-- models/IDE_model/Seed1000_98_model.sql


with source_data as (
    select * from {{ ref('Seed1000_98') }}
)
select
    id,
    {{ convert_to_upperg98('name') }} as name,
    email,
    city,

    country
from source_data
