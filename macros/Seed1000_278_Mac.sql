-- macros/Seed1000_278_Mac.sql
{% macro convert_to_uppermg278(column_name) %}
    upper({{ column_name }})
{% endmacro %}

