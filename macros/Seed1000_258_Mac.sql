-- macros/Seed1000_258_Mac.sql
{% macro convert_to_uppermg258(column_name) %}
    upper({{ column_name }})
{% endmacro %}

