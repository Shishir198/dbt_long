

with "Aggregate_1" as (
SELECT "O_ORDERKEY", "O_CUSTKEY", "O_ORDERSTATUS", sum("O_TOTALPRICE") "SUM_O_TOTALPRICE", max("O_ORDERDATE") "MAX_O_ORDERDATE" FROM (SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS") WHERE (("O_ORDERKEY" != 3000005)) GROUP BY "O_ORDERKEY", "O_CUSTKEY", "O_ORDERSTATUS"   
)


SELECT * FROM "Aggregate_1"