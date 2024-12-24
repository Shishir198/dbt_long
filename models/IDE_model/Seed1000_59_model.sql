-- models/IDE_model/Seed1000_59_model.sql


with source_data as (
    select * from {{ ref('Seed1000_59') }}
)
select
    id,
    {{ convert_to_upperg59('name') }} as name,
    email,
    city,

    country
from source_data
