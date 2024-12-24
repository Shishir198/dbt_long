-- macros/Seed1000_300_Mac.sql
{% macro convert_to_uppermg300(column_name) %}
    upper({{ column_name }})
{% endmacro %}

