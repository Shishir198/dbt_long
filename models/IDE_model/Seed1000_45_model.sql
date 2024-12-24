-- models/IDE_model/Seed1000_45_model.sql


with source_data as (
    select * from {{ ref('Seed1000_45') }}
)
select
    id,
    {{ convert_to_upperg45('name') }} as name,
    email,
    city,

    country
from source_data
