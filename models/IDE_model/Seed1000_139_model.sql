-- models/IDE_model/Seed1000_139_model.sql


with source_data as (
    select * from {{ ref('Seed1000_139') }}
)
select
    id,
    {{ convert_to_upperg139('name') }} as name,
    email,
    city,

    country
from source_data
