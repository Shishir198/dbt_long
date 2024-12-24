-- models/IDE_model/Seed1000_104_model.sql


with source_data as (
    select * from "FDC_QA_KIRUTHIKAA"."TARGET"."Seed1000_104"
)
select
    id,
    
    upper(name)
 as name,
    email,
    city,

    country
from source_data