-- macros/Seed1000_321_Mac.sql
{% macro convert_to_uppermg321(column_name) %}
    upper({{ column_name }})
{% endmacro %}

