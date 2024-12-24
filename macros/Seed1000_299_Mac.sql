-- macros/Seed1000_299_Mac.sql
{% macro convert_to_uppermg299(column_name) %}
    upper({{ column_name }})
{% endmacro %}

