-- models/IDE_model/Seed1000_107_model.sql


with source_data as (
    select * from {{ ref('Seed1000_107') }}
)
select
    id,
    {{ convert_to_upperg107('name') }} as name,
    email,
    city,

    country
from source_data
