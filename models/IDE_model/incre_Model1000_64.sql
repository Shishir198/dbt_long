{{
	config(
           alias="incre_Model1000_64",
           database="FDC_QA_KIRUTHIKAA",
           incremental_strategy="append",
           materialized="incremental",
           schema="TARGET",
           transient=false,
           tags=['4dd1c433-9156-479a-b7de-007989d08655']
	)
}}

with "Aggregate_1" as (
SELECT "O_ORDERKEY", "O_CUSTKEY", "O_ORDERSTATUS", sum("O_TOTALPRICE") "SUM_O_TOTALPRICE", max("O_ORDERDATE") "MAX_O_ORDERDATE" FROM (SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','ORDERS') }}) WHERE (("O_ORDERKEY" != 3000005)) GROUP BY "O_ORDERKEY", "O_CUSTKEY", "O_ORDERSTATUS"   
)


SELECT * FROM "Aggregate_1"
