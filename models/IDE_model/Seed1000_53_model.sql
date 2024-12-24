-- models/IDE_model/Seed1000_53_model.sql


with source_data as (
    select * from {{ ref('Seed1000_53') }}
)
select
    id,
    {{ convert_to_upperg53('name') }} as name,
    email,
    city,

    country
from source_data
