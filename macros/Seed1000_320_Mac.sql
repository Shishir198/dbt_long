-- macros/Seed1000_320_Mac.sql
{% macro convert_to_uppermg320(column_name) %}
    upper({{ column_name }})
{% endmacro %}

