-- models/IDE_model/Seed1000_121_model.sql


with source_data as (
    select * from "FDC_QA_KIRUTHIKAA"."TARGET"."Seed1000_121"
)
select
    id,
    
    upper(name)
 as name,
    email,
    city,

    country
from source_data