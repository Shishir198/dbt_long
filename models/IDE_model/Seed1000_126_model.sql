-- models/IDE_model/Seed1000_126_model.sql


with source_data as (
    select * from {{ ref('Seed1000_126') }}
)
select
    id,
    {{ convert_to_upperg126('name') }} as name,
    email,
    city,

    country
from source_data
