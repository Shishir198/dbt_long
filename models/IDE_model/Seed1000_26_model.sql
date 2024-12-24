-- models/IDE_model/Seed1000_26_model.sql


with source_data as (
    select * from {{ ref('Seed1000_26') }}
)
select
    id,
    {{ convert_to_upperg26('name') }} as name,
    email,
    city,

    country
from source_data
