-- macros/Seed1000_312_Mac.sql
{% macro convert_to_uppermg312(column_name) %}
    upper({{ column_name }})
{% endmacro %}

