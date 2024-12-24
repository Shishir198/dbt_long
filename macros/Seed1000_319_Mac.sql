-- macros/Seed1000_319_Mac.sql
{% macro convert_to_uppermg319(column_name) %}
    upper({{ column_name }})
{% endmacro %}

