-- models/IDE_model/Seed1000_112_model.sql


with source_data as (
    select * from {{ ref('Seed1000_112') }}
)
select
    id,
    {{ convert_to_upperg112('name') }} as name,
    email,
    city,

    country
from source_data
