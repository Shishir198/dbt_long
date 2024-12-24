-- macros/Seed1000_237_Mac.sql
{% macro convert_to_uppermg237(column_name) %}
    upper({{ column_name }})
{% endmacro %}

