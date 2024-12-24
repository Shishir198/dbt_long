-- macros/Seed1000_266_Mac.sql
{% macro convert_to_uppermg266(column_name) %}
    upper({{ column_name }})
{% endmacro %}

