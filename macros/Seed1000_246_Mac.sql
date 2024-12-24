-- macros/Seed1000_246_Mac.sql
{% macro convert_to_uppermg246(column_name) %}
    upper({{ column_name }})
{% endmacro %}

