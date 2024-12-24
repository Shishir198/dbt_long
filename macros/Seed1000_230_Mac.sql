-- macros/Seed1000_230_Mac.sql
{% macro convert_to_uppermg230(column_name) %}
    upper({{ column_name }})
{% endmacro %}

