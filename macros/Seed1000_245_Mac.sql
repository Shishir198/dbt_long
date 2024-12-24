-- macros/Seed1000_245_Mac.sql
{% macro convert_to_uppermg245(column_name) %}
    upper({{ column_name }})
{% endmacro %}

