-- macros/Seed1000_268_Mac.sql
{% macro convert_to_uppermg268(column_name) %}
    upper({{ column_name }})
{% endmacro %}

