-- models/IDE_model/Seed1000_97_model.sql


with source_data as (
    select * from {{ ref('Seed1000_97') }}
)
select
    id,
    {{ convert_to_upperg97('name') }} as name,
    email,
    city,

    country
from source_data
