-- models/IDE_model/Seed1000_56_model.sql


with source_data as (
    select * from {{ ref('Seed1000_56') }}
)
select
    id,
    {{ convert_to_upperg56('name') }} as name,
    email,
    city,

    country
from source_data
