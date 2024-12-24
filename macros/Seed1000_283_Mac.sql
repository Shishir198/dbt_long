-- macros/Seed1000_283_Mac.sql
{% macro convert_to_uppermg283(column_name) %}
    upper({{ column_name }})
{% endmacro %}

