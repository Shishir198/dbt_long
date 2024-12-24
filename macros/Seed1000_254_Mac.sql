-- macros/Seed1000_254_Mac.sql
{% macro convert_to_uppermg254(column_name) %}
    upper({{ column_name }})
{% endmacro %}

