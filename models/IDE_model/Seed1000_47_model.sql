-- models/IDE_model/Seed1000_47_model.sql


with source_data as (
    select * from {{ ref('Seed1000_47') }}
)
select
    id,
    {{ convert_to_upperg47('name') }} as name,
    email,
    city,

    country
from source_data
