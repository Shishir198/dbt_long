-- macros/Seed1000_277_Mac.sql
{% macro convert_to_uppermg277(column_name) %}
    upper({{ column_name }})
{% endmacro %}

