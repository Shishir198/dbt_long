-- macros/Seed1000_247_Mac.sql
{% macro convert_to_uppermg247(column_name) %}
    upper({{ column_name }})
{% endmacro %}

