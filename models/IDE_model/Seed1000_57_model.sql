-- models/IDE_model/Seed1000_57_model.sql


with source_data as (
    select * from {{ ref('Seed1000_57') }}
)
select
    id,
    {{ convert_to_upperg57('name') }} as name,
    email,
    city,

    country
from source_data
