-- macros/Seed1000_251_Mac.sql
{% macro convert_to_uppermg251(column_name) %}
    upper({{ column_name }})
{% endmacro %}

