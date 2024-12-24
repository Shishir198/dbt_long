-- macros/Seed1000_228_Mac.sql
{% macro convert_to_uppermg228(column_name) %}
    upper({{ column_name }})
{% endmacro %}

