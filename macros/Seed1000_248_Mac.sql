-- macros/Seed1000_248_Mac.sql
{% macro convert_to_uppermg248(column_name) %}
    upper({{ column_name }})
{% endmacro %}

