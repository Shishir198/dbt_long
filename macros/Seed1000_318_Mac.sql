-- macros/Seed1000_318_Mac.sql
{% macro convert_to_uppermg318(column_name) %}
    upper({{ column_name }})
{% endmacro %}

