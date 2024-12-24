-- macros/Seed1000_250_Mac.sql
{% macro convert_to_uppermg250(column_name) %}
    upper({{ column_name }})
{% endmacro %}

