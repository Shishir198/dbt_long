-- macros/Seed1000_256_Mac.sql
{% macro convert_to_uppermg256(column_name) %}
    upper({{ column_name }})
{% endmacro %}

