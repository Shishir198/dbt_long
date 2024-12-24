-- models/IDE_model/Seed1000_150_model.sql


with source_data as (
    select * from {{ ref('Seed1000_150') }}
)
select
    id,
    {{ convert_to_upperg150('name') }} as name,
    email,
    city,

    country
from source_data
