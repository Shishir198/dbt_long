-- macros/Seed1000_282_Mac.sql
{% macro convert_to_uppermg282(column_name) %}
    upper({{ column_name }})
{% endmacro %}

