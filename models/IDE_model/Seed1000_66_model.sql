-- models/IDE_model/Seed1000_66_model.sql


with source_data as (
    select * from {{ ref('Seed1000_66') }}
)
select
    id,
    {{ convert_to_upperg66('name') }} as name,
    email,
    city,

    country
from source_data