-- macros/Seed1000_293_Mac.sql
{% macro convert_to_uppermg293(column_name) %}
    upper({{ column_name }})
{% endmacro %}

