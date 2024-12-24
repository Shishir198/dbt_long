-- macros/Seed1000_302_Mac.sql
{% macro convert_to_uppermg302(column_name) %}
    upper({{ column_name }})
{% endmacro %}

