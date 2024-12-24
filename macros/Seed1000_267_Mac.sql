-- macros/Seed1000_267_Mac.sql
{% macro convert_to_uppermg267(column_name) %}
    upper({{ column_name }})
{% endmacro %}

