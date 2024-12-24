-- macros/Seed1000_301_Mac.sql
{% macro convert_to_uppermg301(column_name) %}
    upper({{ column_name }})
{% endmacro %}

