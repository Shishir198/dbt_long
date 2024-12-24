-- models/IDE_model/Seed1000_84_model.sql


with source_data as (
    select * from {{ ref('Seed1000_84') }}
)
select
    id,
    {{ convert_to_upperg84('name') }} as name,
    email,
    city,

    country
from source_data
