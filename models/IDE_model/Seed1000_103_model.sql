-- models/IDE_model/Seed1000_103_model.sql


with source_data as (
    select * from {{ ref('Seed1000_103') }}
)
select
    id,
    {{ convert_to_upperg103('name') }} as name,
    email,
    city,

    country
from source_data
