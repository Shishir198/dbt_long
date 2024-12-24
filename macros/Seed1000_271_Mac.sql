-- macros/Seed1000_271_Mac.sql
{% macro convert_to_uppermg271(column_name) %}
    upper({{ column_name }})
{% endmacro %}

