-- macros/Seed1000_303_Mac.sql
{% macro convert_to_uppermg303(column_name) %}
    upper({{ column_name }})
{% endmacro %}

