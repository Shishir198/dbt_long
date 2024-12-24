-- macros/Seed1000_291_Mac.sql
{% macro convert_to_uppermg291(column_name) %}
    upper({{ column_name }})
{% endmacro %}

