-- macros/Seed1000_289_Mac.sql
{% macro convert_to_uppermg289(column_name) %}
    upper({{ column_name }})
{% endmacro %}

