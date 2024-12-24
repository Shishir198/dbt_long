-- macros/Seed1000_253_Mac.sql
{% macro convert_to_uppermg253(column_name) %}
    upper({{ column_name }})
{% endmacro %}

