-- macros/Seed1000_280_Mac.sql
{% macro convert_to_uppermg280(column_name) %}
    upper({{ column_name }})
{% endmacro %}

