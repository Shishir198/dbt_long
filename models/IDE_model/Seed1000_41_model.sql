-- models/IDE_model/Seed1000_41_model.sql


with source_data as (
    select * from {{ ref('Seed1000_41') }}
)
select
    id,
    {{ convert_to_upperg41('name') }} as name,
    email,
    city,

    country
from source_data
