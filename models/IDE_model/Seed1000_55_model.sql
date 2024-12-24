-- models/IDE_model/Seed1000_55_model.sql


with source_data as (
    select * from {{ ref('Seed1000_55') }}
)
select
    id,
    {{ convert_to_upperg55('name') }} as name,
    email,
    city,

    country
from source_data
