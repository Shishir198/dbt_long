-- macros/Seed1000_322_Mac.sql
{% macro convert_to_uppermg322(column_name) %}
    upper({{ column_name }})
{% endmacro %}

