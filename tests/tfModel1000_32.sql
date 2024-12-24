-- tests/combined_tests.sql

-- Test 1: Check for Unique Customer Keys
SELECT 'unique_custkey' AS test_name, C_CUSTKEY
FROM {{ ref('Model1000_32') }}
GROUP BY C_CUSTKEY
HAVING COUNT(*) > 1

UNION ALL

-- Test 2: Check for Non-Null Values in Important Columns
SELECT 'non_null_columns' AS test_name, *
FROM {{ ref('Model1000_32') }}
WHERE C_CUSTKEY IS NULL
   OR C_NAME IS NULL
   OR C_NATIONKEY IS NULL
   OR C_PHONE IS NULL



UNION ALL

-- Test 4: Check for Specific Market Segment Values
SELECT 'validate_mktsegment' AS test_name, *
FROM {{ ref('Model1000_32') }}
WHERE C_MKTSEGMENT NOT IN ('AUTOMOBILE', 'BUILDING', 'FURNITURE', 'MACHINERY', 'HOUSEHOLD')

UNION ALL

-- Test 5: Check for Address Length
SELECT 'validate_address_length' AS test_name, *
FROM {{ ref('Model1000_32') }}
WHERE LENGTH(C_ADDRESS) > 50

UNION ALL

-- Test 6: Check for Balanced Account
SELECT 'validate_acctbal' AS test_name, *
FROM {{ ref('Model1000_32') }}
WHERE C_ACCTBAL < 0 OR C_ACCTBAL > 1000000

UNION ALL

-- Test 7: Check for Comment Length
SELECT 'validate_comment_length' AS test_name, *
FROM {{ ref('Model1000_32') }}
WHERE LENGTH(C_COMMENT) > 255
