-- macros/Seed1000_257_Mac.sql
{% macro convert_to_uppermg257(column_name) %}
    upper({{ column_name }})
{% endmacro %}

