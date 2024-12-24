-- models/IDE_model/Seed1000_78_model.sql


with source_data as (
    select * from {{ ref('Seed1000_78') }}
)
select
    id,
    {{ convert_to_upperg78('name') }} as name,
    email,
    city,

    country
from source_data
