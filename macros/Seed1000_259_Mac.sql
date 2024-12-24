-- macros/Seed1000_259_Mac.sql
{% macro convert_to_uppermg259(column_name) %}
    upper({{ column_name }})
{% endmacro %}

