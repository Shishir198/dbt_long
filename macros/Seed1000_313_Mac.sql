-- macros/Seed1000_313_Mac.sql
{% macro convert_to_uppermg313(column_name) %}
    upper({{ column_name }})
{% endmacro %}

