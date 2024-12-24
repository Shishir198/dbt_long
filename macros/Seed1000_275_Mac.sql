-- macros/Seed1000_275_Mac.sql
{% macro convert_to_uppermg275(column_name) %}
    upper({{ column_name }})
{% endmacro %}

