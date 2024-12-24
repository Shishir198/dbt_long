-- macros/Seed1000_290_Mac.sql
{% macro convert_to_uppermg290(column_name) %}
    upper({{ column_name }})
{% endmacro %}

