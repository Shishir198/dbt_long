-- models/IDE_model/Seed1000_104_model.sql


with source_data as (
    select * from {{ ref('Seed1000_104') }}
)
select
    id,
    {{ convert_to_upperg104('name') }} as name,
    email,
    city,

    country
from source_data
