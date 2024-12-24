-- macros/Seed1000_307_Mac.sql
{% macro convert_to_uppermg307(column_name) %}
    upper({{ column_name }})
{% endmacro %}

