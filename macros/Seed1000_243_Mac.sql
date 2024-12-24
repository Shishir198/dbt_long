-- macros/Seed1000_243_Mac.sql
{% macro convert_to_uppermg243(column_name) %}
    upper({{ column_name }})
{% endmacro %}

