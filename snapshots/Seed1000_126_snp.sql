-- snapshots/Seed1000_126_snp.sql

{% Seed1000_126_snp %}

{{
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}

SELECT
    id,
    name,
    email,
    city,
    country,
    CURRENT_TIMESTAMP() AS updated_at
FROM {{ ref('Seed1000_126') }}

{% endsnapshot %}
