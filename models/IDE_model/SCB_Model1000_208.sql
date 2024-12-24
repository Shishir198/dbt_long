{{
	config(
           alias="SCB_Model1000_208",
           database="FDC_QA_KIRUTHIKAA",
           materialized="ephemeral",
           schema="TARGET",
           tags=['35124730-b366-4e65-8bdb-a8eb58504da2']
	)
}}

with "Filter_1" as (
SELECT * FROM {{ source('FDC_FDC_QA_KIRUTHIKAA_SOURCE','FDC_TABLE1') }} WHERE (("SALE_ID" > 10))    
)


SELECT * FROM "Filter_1"
