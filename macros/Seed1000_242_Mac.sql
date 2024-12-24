-- macros/Seed1000_242_Mac.sql
{% macro convert_to_uppermg242(column_name) %}
    upper({{ column_name }})
{% endmacro %}

