-- macros/Seed1000_240_Mac.sql
{% macro convert_to_uppermg240(column_name) %}
    upper({{ column_name }})
{% endmacro %}

