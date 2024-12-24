-- models/IDE_model/Seed1000_64_model.sql


with source_data as (
    select * from "FDC_QA_KIRUTHIKAA"."TARGET"."Seed1000_64"
)
select
    id,
    
    upper(name)
 as name,
    email,
    city,

    country
from source_data