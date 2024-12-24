-- macros/Seed1000_285_Mac.sql
{% macro convert_to_uppermg285(column_name) %}
    upper({{ column_name }})
{% endmacro %}

