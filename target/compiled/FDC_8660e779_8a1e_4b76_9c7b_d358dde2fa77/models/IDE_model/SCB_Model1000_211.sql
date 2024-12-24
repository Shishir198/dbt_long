

with "Filter_1" as (
SELECT * FROM "FDC_QA_KIRUTHIKAA"."SOURCE"."FDC_TABLE1" WHERE (("SALE_ID" > 10))    
)


SELECT * FROM "Filter_1"