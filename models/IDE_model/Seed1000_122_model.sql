-- models/IDE_model/Seed1000_122_model.sql


with source_data as (
    select * from {{ ref('Seed1000_122') }}
)
select
    id,
    {{ convert_to_upperg122('name') }} as name,
    email,
    city,

    country
from source_data
