-- macros/Seed1000_314_Mac.sql
{% macro convert_to_uppermg314(column_name) %}
    upper({{ column_name }})
{% endmacro %}

