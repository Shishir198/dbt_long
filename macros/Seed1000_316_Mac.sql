-- macros/Seed1000_316_Mac.sql
{% macro convert_to_uppermg316(column_name) %}
    upper({{ column_name }})
{% endmacro %}

