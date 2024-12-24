-- macros/Seed1000_288_Mac.sql
{% macro convert_to_uppermg288(column_name) %}
    upper({{ column_name }})
{% endmacro %}

