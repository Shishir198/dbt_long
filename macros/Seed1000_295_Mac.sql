-- macros/Seed1000_295_Mac.sql
{% macro convert_to_uppermg295(column_name) %}
    upper({{ column_name }})
{% endmacro %}

