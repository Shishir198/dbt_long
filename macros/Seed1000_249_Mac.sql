-- macros/Seed1000_249_Mac.sql
{% macro convert_to_uppermg249(column_name) %}
    upper({{ column_name }})
{% endmacro %}

