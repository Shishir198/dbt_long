{% snapshot SCB_Model1000_209_snp %}
{{
	config(
		alias="SCB_Model1000_209_snp",
		invalidate_hard_deletes=false,
		strategy="timestamp",
		target_database="FDC_QA_KIRUTHIKAA",
		target_schema="TARGET",
		transient=false,
		unique_key='"SALE_ID"',
		updated_at='"SALE_DATETIME"',
		tags=['35124730-b366-4e65-8bdb-a8eb58504da2']
	)
}}
SELECT * FROM  {{ ref('SCB_Model1000_209') }}
{% endsnapshot %}
