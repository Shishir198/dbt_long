-- macros/Seed1000_252_Mac.sql
{% macro convert_to_uppermg252(column_name) %}
    upper({{ column_name }})
{% endmacro %}

