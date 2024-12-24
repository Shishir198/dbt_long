{{
	config(
           alias="ice_Model1000_109",
           baseLocation="s3://aw-sf-fdc-external-volume/FDC-14944/",
           catalog="SNOWFLAKE",
           copy_grants=false,
           database="FDC_QA_KIRUTHIKAA",
           externalVolume="ICEBERG_EXTERNAL_VOLUME",
           iceberg="true",
           materialized="table",
           schema="TARGET",
           transient=false,
           tags=['d3980c58-d2e1-4850-8c0c-2ceb2120b6d4']
	)
}}

with "Filter_1" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','CUSTOMER') }} WHERE (("C_NATIONKEY" > 5))    
),

"Dataset_2" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','CUSTOMER') }}     
),

"Union_1" as (

SELECT Filter_1."C_CUSTKEY" AS "C_CUSTKEY", Filter_1."C_NAME" AS "C_NAME", Filter_1."C_ADDRESS" AS "C_ADDRESS", Filter_1."C_NATIONKEY" AS "C_NATIONKEY", Filter_1."C_PHONE" AS "C_PHONE", Filter_1."C_ACCTBAL" AS "C_ACCTBAL", Filter_1."C_MKTSEGMENT" AS "C_MKTSEGMENT", Filter_1."C_COMMENT" AS "C_COMMENT" FROM "Filter_1" AS Filter_1 
UNION ALL
SELECT Dataset_2."C_CUSTKEY" AS "C_CUSTKEY", Dataset_2."C_NAME" AS "C_NAME", Dataset_2."C_ADDRESS" AS "C_ADDRESS", Dataset_2."C_NATIONKEY" AS "C_NATIONKEY", Dataset_2."C_PHONE" AS "C_PHONE", Dataset_2."C_ACCTBAL" AS "C_ACCTBAL", Dataset_2."C_MKTSEGMENT" AS "C_MKTSEGMENT", Dataset_2."C_COMMENT" AS "C_COMMENT" FROM "Dataset_2" AS Dataset_2 
      
)


SELECT * FROM "Union_1"