{{
	config(
           alias="Model1000_299",
           copy_grants=false,
           database="FDC_QA_KIRUTHIKAA",
           materialized="table",
           schema="PUBLIC",
           transient=false,
           tags=['7e78d65e-455b-4f32-b240-1321f7635d6f']
	)
}}

with "Dataset" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF100','CUSTOMER') }}     
),

"Dataset_2" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','NATION') }}     
),

"Join_2" as (
SELECT Dataset."C_CUSTKEY" as "C_CUSTKEY",Dataset."C_NAME" as "C_NAME",Dataset."C_ADDRESS" as "C_ADDRESS",Dataset."C_NATIONKEY" as "C_NATIONKEY",Dataset."C_PHONE" as "C_PHONE",Dataset."C_ACCTBAL" as "C_ACCTBAL",Dataset."C_MKTSEGMENT" as "C_MKTSEGMENT",Dataset."C_COMMENT" as "C_COMMENT" FROM "Dataset"  as Dataset LEFT JOIN "Dataset_2"  as Dataset_2 ON Dataset."C_NATIONKEY"=Dataset_2."N_NATIONKEY"     
),

"Union_1" as (

SELECT Dataset."C_CUSTKEY" AS "C_CUSTKEY", Dataset."C_NAME" AS "C_NAME", Dataset."C_ADDRESS" AS "C_ADDRESS", Dataset."C_NATIONKEY" AS "C_NATIONKEY", Dataset."C_PHONE" AS "C_PHONE", Dataset."C_ACCTBAL" AS "C_ACCTBAL", Dataset."C_MKTSEGMENT" AS "C_MKTSEGMENT", Dataset."C_COMMENT" AS "C_COMMENT" FROM "Dataset" AS Dataset 
UNION ALL
SELECT Join_2."C_CUSTKEY" AS "C_CUSTKEY", Join_2."C_NAME" AS "C_NAME", Join_2."C_ADDRESS" AS "C_ADDRESS", Join_2."C_NATIONKEY" AS "C_NATIONKEY", Join_2."C_PHONE" AS "C_PHONE", Join_2."C_ACCTBAL" AS "C_ACCTBAL", Join_2."C_MKTSEGMENT" AS "C_MKTSEGMENT", Join_2."C_COMMENT" AS "C_COMMENT" FROM "Join_2" AS Join_2 
      
),

"Dataset_2_2" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','ORDERS') }}     
),

"Join_2_2" as (
SELECT Dataset_2_2."O_ORDERKEY" as "O_ORDERKEY",Dataset_2_2."O_CUSTKEY" as "O_CUSTKEY",Dataset_2_2."O_ORDERSTATUS" as "O_ORDERSTATUS",Dataset_2_2."O_TOTALPRICE" as "O_TOTALPRICE",Dataset_2_2."O_ORDERDATE" as "O_ORDERDATE",Dataset_2_2."O_ORDERPRIORITY" as "O_ORDERPRIORITY",Dataset_2_2."O_CLERK" as "O_CLERK",Dataset_2_2."O_SHIPPRIORITY" as "O_SHIPPRIORITY",Dataset_2_2."O_COMMENT" as "O_COMMENT",Join_2."C_CUSTKEY" as "C_CUSTKEY",Join_2."C_NAME" as "C_NAME",Join_2."C_ADDRESS" as "C_ADDRESS",Join_2."C_NATIONKEY" as "C_NATIONKEY",Join_2."C_PHONE" as "C_PHONE",Join_2."C_ACCTBAL" as "C_ACCTBAL",Join_2."C_MKTSEGMENT" as "C_MKTSEGMENT",Join_2."C_COMMENT" as "C_COMMENT" FROM "Dataset_2_2"  as Dataset_2_2 INNER JOIN "Join_2"  as Join_2 ON Dataset_2_2."O_CUSTKEY"=Join_2."C_CUSTKEY"     
),

"Difference" as (
SELECT Union_1."C_CUSTKEY" AS "C_CUSTKEY", Union_1."C_NAME" AS "C_NAME", Union_1."C_ADDRESS" AS "C_ADDRESS", Union_1."C_NATIONKEY" AS "C_NATIONKEY", Union_1."C_PHONE" AS "C_PHONE", Union_1."C_ACCTBAL" AS "C_ACCTBAL", Union_1."C_MKTSEGMENT" AS "C_MKTSEGMENT", Union_1."C_COMMENT" AS "C_COMMENT" FROM "Union_1" AS Union_1 

EXCEPT
SELECT Join_2_2."C_CUSTKEY" AS "C_CUSTKEY", Join_2_2."C_NAME" AS "C_NAME", Join_2_2."C_ADDRESS" AS "C_ADDRESS", Join_2_2."C_NATIONKEY" AS "C_NATIONKEY", Join_2_2."C_PHONE" AS "C_PHONE", Join_2_2."C_ACCTBAL" AS "C_ACCTBAL", Join_2_2."C_MKTSEGMENT" AS "C_MKTSEGMENT", Join_2_2."C_COMMENT" AS "C_COMMENT" FROM "Join_2_2" AS Join_2_2 

      
),

"Aggregate" as (
SELECT "C_CUSTKEY", "C_NATIONKEY", "C_ACCTBAL", count(DISTINCT "C_CUSTKEY") "NUNIQUE_C_CUSTKEY", count("C_NATIONKEY") "COUNT_C_NATIONKEY", sum("C_ACCTBAL") "SUM_C_ACCTBAL" FROM "Difference"  GROUP BY "C_CUSTKEY", "C_NATIONKEY", "C_ACCTBAL"   
),

"Transformer" as (
SELECT "NUNIQUE_C_CUSTKEY" AS "NUNIQUE_C_CUSTKEY","COUNT_C_NATIONKEY" AS "COUNT_C_NATIONKEY","SUM_C_ACCTBAL"+100 AS "SUM_C_ACCTBAL","C_CUSTKEY" AS "C_CUSTKEY","C_NATIONKEY" AS "C_NATIONKEY",TO_CHAR("C_ACCTBAL", 'XXXXXX') AS "C_ACCTBAL" FROM "Aggregate"     
),

"Dataset_2_2_2" as (
SELECT * FROM {{ source('FDC_SNOWFLAKE_SAMPLE_DATA_TPCH_SF1_2','LINEITEM') }}     
),

"Join_2_2_2" as (
SELECT Dataset_2_2."O_ORDERKEY" as "O_ORDERKEY",Dataset_2_2_2."L_ORDERKEY" as "L_ORDERKEY",Dataset_2_2_2."L_PARTKEY" as "L_PARTKEY",Dataset_2_2_2."L_SUPPKEY" as "L_SUPPKEY",Dataset_2_2_2."L_LINENUMBER" as "L_LINENUMBER",Dataset_2_2_2."L_QUANTITY" as "L_QUANTITY",Dataset_2_2_2."L_EXTENDEDPRICE" as "L_EXTENDEDPRICE",Dataset_2_2_2."L_DISCOUNT" as "L_DISCOUNT",Dataset_2_2_2."L_TAX" as "L_TAX",Dataset_2_2_2."L_RETURNFLAG" as "L_RETURNFLAG",Dataset_2_2_2."L_LINESTATUS" as "L_LINESTATUS",Dataset_2_2_2."L_SHIPDATE" as "L_SHIPDATE",Dataset_2_2_2."L_COMMITDATE" as "L_COMMITDATE",Dataset_2_2_2."L_RECEIPTDATE" as "L_RECEIPTDATE",Dataset_2_2_2."L_SHIPINSTRUCT" as "L_SHIPINSTRUCT",Dataset_2_2_2."L_SHIPMODE" as "L_SHIPMODE",Dataset_2_2_2."L_COMMENT" as "L_COMMENT" FROM "Dataset_2_2"  as Dataset_2_2 INNER JOIN "Dataset_2_2_2"  as Dataset_2_2_2 ON Dataset_2_2."O_ORDERKEY"=Dataset_2_2_2."L_ORDERKEY"     
),

"Filter" as (
SELECT Join_2_2."O_ORDERKEY" as "O_ORDERKEY",Join_2_2."O_CUSTKEY" as "O_CUSTKEY",Join_2_2."O_ORDERSTATUS" as "O_ORDERSTATUS",Join_2_2."O_TOTALPRICE" as "O_TOTALPRICE",Join_2_2."O_ORDERDATE" as "O_ORDERDATE",Join_2_2."O_ORDERPRIORITY" as "O_ORDERPRIORITY",Join_2_2."O_CLERK" as "O_CLERK",Join_2_2."O_SHIPPRIORITY" as "O_SHIPPRIORITY",Join_2_2."O_COMMENT" as "O_COMMENT",Join_2_2."C_CUSTKEY" as "C_CUSTKEY",Join_2_2."C_NAME" as "C_NAME",Join_2_2."C_ADDRESS" as "C_ADDRESS",Join_2_2."C_NATIONKEY" as "C_NATIONKEY",Join_2_2."C_PHONE" as "C_PHONE",Join_2_2."C_ACCTBAL" as "C_ACCTBAL",Join_2_2."C_MKTSEGMENT" as "C_MKTSEGMENT",Join_2_2."C_COMMENT" as "C_COMMENT",Join_2_2_2."L_ORDERKEY" as "L_ORDERKEY",Join_2_2_2."L_PARTKEY" as "L_PARTKEY",Join_2_2_2."L_SUPPKEY" as "L_SUPPKEY",Join_2_2_2."L_LINENUMBER" as "L_LINENUMBER",Join_2_2_2."L_QUANTITY" as "L_QUANTITY",Join_2_2_2."L_EXTENDEDPRICE" as "L_EXTENDEDPRICE",Join_2_2_2."L_DISCOUNT" as "L_DISCOUNT",Join_2_2_2."L_TAX" as "L_TAX",Join_2_2_2."L_RETURNFLAG" as "L_RETURNFLAG",Join_2_2_2."L_LINESTATUS" as "L_LINESTATUS",Join_2_2_2."L_SHIPDATE" as "L_SHIPDATE",Join_2_2_2."L_COMMITDATE" as "L_COMMITDATE",Join_2_2_2."L_RECEIPTDATE" as "L_RECEIPTDATE",Join_2_2_2."L_SHIPINSTRUCT" as "L_SHIPINSTRUCT",Join_2_2_2."L_SHIPMODE" as "L_SHIPMODE",Join_2_2_2."L_COMMENT" as "L_COMMENT" FROM "Join_2_2"  as Join_2_2 FULL OUTER JOIN "Join_2_2_2"  as Join_2_2_2 ON Join_2_2."O_ORDERKEY"=Join_2_2_2."O_ORDERKEY" WHERE (
(Join_2_2."C_NATIONKEY" != 5) )    
),

"Custom_SQL" as (
select * from "Filter"      
),

"Join_4" as (
SELECT Transformer."C_NATIONKEY" as "C_NATIONKEY",Transformer."SUM_C_ACCTBAL" as "SUM_C_ACCTBAL",Transformer."COUNT_C_NATIONKEY" as "COUNT_C_NATIONKEY",Transformer."C_ACCTBAL" as "C_ACCTBAL",Transformer."C_CUSTKEY" as "C_CUSTKEY",Transformer."NUNIQUE_C_CUSTKEY" as "NUNIQUE_C_CUSTKEY",Custom_SQL."O_ORDERKEY" as "O_ORDERKEY",Custom_SQL."O_CUSTKEY" as "O_CUSTKEY",Custom_SQL."O_ORDERSTATUS" as "O_ORDERSTATUS",Custom_SQL."O_TOTALPRICE" as "O_TOTALPRICE",Custom_SQL."O_ORDERDATE" as "O_ORDERDATE",Custom_SQL."O_ORDERPRIORITY" as "O_ORDERPRIORITY",Custom_SQL."O_CLERK" as "O_CLERK",Custom_SQL."O_SHIPPRIORITY" as "O_SHIPPRIORITY",Custom_SQL."O_COMMENT" as "O_COMMENT",Custom_SQL."C_CUSTKEY" as "Custom SQL_C_CUSTKEY",Custom_SQL."C_NAME" as "C_NAME",Custom_SQL."C_ADDRESS" as "C_ADDRESS",Custom_SQL."C_NATIONKEY" as "Custom SQL_C_NATIONKEY",Custom_SQL."C_PHONE" as "C_PHONE",Custom_SQL."C_ACCTBAL" as "Custom SQL_C_ACCTBAL",Custom_SQL."C_MKTSEGMENT" as "C_MKTSEGMENT",Custom_SQL."C_COMMENT" as "C_COMMENT",Custom_SQL."L_ORDERKEY" as "L_ORDERKEY",Custom_SQL."L_PARTKEY" as "L_PARTKEY",Custom_SQL."L_SUPPKEY" as "L_SUPPKEY",Custom_SQL."L_LINENUMBER" as "L_LINENUMBER",Custom_SQL."L_QUANTITY" as "L_QUANTITY",Custom_SQL."L_EXTENDEDPRICE" as "L_EXTENDEDPRICE",Custom_SQL."L_DISCOUNT" as "L_DISCOUNT",Custom_SQL."L_TAX" as "L_TAX",Custom_SQL."L_RETURNFLAG" as "L_RETURNFLAG",Custom_SQL."L_LINESTATUS" as "L_LINESTATUS",Custom_SQL."L_SHIPDATE" as "L_SHIPDATE",Custom_SQL."L_COMMITDATE" as "L_COMMITDATE",Custom_SQL."L_RECEIPTDATE" as "L_RECEIPTDATE",Custom_SQL."L_SHIPINSTRUCT" as "L_SHIPINSTRUCT",Custom_SQL."L_SHIPMODE" as "L_SHIPMODE",Custom_SQL."L_COMMENT" as "L_COMMENT" FROM "Transformer"  as Transformer INNER JOIN "Custom_SQL"  as Custom_SQL ON Transformer."C_CUSTKEY"=Custom_SQL."O_CUSTKEY"     
)


SELECT * FROM "Join_4"