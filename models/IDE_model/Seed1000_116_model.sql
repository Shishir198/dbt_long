-- models/IDE_model/Seed1000_116_model.sql


with source_data as (
    select * from {{ ref('Seed1000_116') }}
)
select
    id,
    {{ convert_to_upperg116('name') }} as name,
    email,
    city,

    country
from source_data
