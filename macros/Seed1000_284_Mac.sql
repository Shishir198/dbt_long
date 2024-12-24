-- macros/Seed1000_284_Mac.sql
{% macro convert_to_uppermg284(column_name) %}
    upper({{ column_name }})
{% endmacro %}

