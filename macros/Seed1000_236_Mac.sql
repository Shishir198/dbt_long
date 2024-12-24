-- macros/Seed1000_236_Mac.sql
{% macro convert_to_uppermg236(column_name) %}
    upper({{ column_name }})
{% endmacro %}

