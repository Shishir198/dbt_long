-- macros/Seed1000_274_Mac.sql
{% macro convert_to_uppermg274(column_name) %}
    upper({{ column_name }})
{% endmacro %}

