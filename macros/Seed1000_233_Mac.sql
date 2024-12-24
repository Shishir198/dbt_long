-- macros/Seed1000_233_Mac.sql
{% macro convert_to_uppermg233(column_name) %}
    upper({{ column_name }})
{% endmacro %}

