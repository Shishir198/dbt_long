-- models/IDE_model/Seed1000_7_model.sql


with source_data as (
    select * from {{ ref('Seed1000_7') }}
)
select
    id,
    {{ convert_to_upperg7('name') }} as name,
    email,
    city,

    country
from source_data
