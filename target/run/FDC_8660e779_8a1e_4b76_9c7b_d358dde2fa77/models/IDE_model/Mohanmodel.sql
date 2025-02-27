
  
    

        create or replace  table "FDC_QA_KIRUTHIKAA"."TARGET_TARGET"."Mohanmodel.sql"
         as
        (
 
with "Filter_1" as (
SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" WHERE (("C_NATIONKEY" > 5))    
),
 
"Dataset_2" as (
SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"    
),
 
"Union_1" as (
 
SELECT Filter_1."C_CUSTKEY" AS "C_CUSTKEY", Filter_1."C_NAME" AS "C_NAME", Filter_1."C_ADDRESS" AS "C_ADDRESS", Filter_1."C_NATIONKEY" AS "C_NATIONKEY", Filter_1."C_PHONE" AS "C_PHONE", Filter_1."C_ACCTBAL" AS "C_ACCTBAL", Filter_1."C_MKTSEGMENT" AS "C_MKTSEGMENT", Filter_1."C_COMMENT" AS "C_COMMENT" FROM "Filter_1" AS Filter_1
UNION ALL
SELECT Dataset_2."C_CUSTKEY" AS "C_CUSTKEY", Dataset_2."C_NAME" AS "C_NAME", Dataset_2."C_ADDRESS" AS "C_ADDRESS", Dataset_2."C_NATIONKEY" AS "C_NATIONKEY", Dataset_2."C_PHONE" AS "C_PHONE", Dataset_2."C_ACCTBAL" AS "C_ACCTBAL", Dataset_2."C_MKTSEGMENT" AS "C_MKTSEGMENT", Dataset_2."C_COMMENT" AS "C_COMMENT" FROM "Dataset_2" AS Dataset_2
     
)
 
 
SELECT * FROM "Union_1"
        );
      
  