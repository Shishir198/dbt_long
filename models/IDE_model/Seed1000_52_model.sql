-- models/IDE_model/Seed1000_52_model.sql


with source_data as (
    select * from {{ ref('Seed1000_52') }}
)
select
    id,
    {{ convert_to_upperg52('name') }} as name,
    email,
    city,

    country
from source_data
