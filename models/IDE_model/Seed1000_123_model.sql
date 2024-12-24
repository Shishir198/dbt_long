-- models/IDE_model/Seed1000_123_model.sql


with source_data as (
    select * from {{ ref('Seed1000_123') }}
)
select
    id,
    {{ convert_to_upperg123('name') }} as name,
    email,
    city,

    country
from source_data
