-- macros/Seed1000_297_Mac.sql
{% macro convert_to_uppermg297(column_name) %}
    upper({{ column_name }})
{% endmacro %}

