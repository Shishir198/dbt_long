-- macros/Seed1000_311_Mac.sql
{% macro convert_to_uppermg311(column_name) %}
    upper({{ column_name }})
{% endmacro %}

