-- macros/Seed1000_324_Mac.sql
{% macro convert_to_uppermg324(column_name) %}
    upper({{ column_name }})
{% endmacro %}

