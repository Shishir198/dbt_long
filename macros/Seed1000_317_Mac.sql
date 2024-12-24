-- macros/Seed1000_317_Mac.sql
{% macro convert_to_uppermg317(column_name) %}
    upper({{ column_name }})
{% endmacro %}

