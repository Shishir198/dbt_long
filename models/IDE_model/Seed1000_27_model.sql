-- models/IDE_model/Seed1000_27_model.sql


with source_data as (
    select * from {{ ref('Seed1000_27') }}
)
select
    id,
    {{ convert_to_upperg27('name') }} as name,
    email,
    city,

    country
from source_data
