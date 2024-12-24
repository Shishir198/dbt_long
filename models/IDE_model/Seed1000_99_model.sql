-- models/IDE_model/Seed1000_99_model.sql


with source_data as (
    select * from {{ ref('Seed1000_99') }}
)
select
    id,
    {{ convert_to_upperg99('name') }} as name,
    email,
    city,

    country
from source_data
