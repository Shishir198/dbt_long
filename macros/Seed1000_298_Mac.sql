-- macros/Seed1000_298_Mac.sql
{% macro convert_to_uppermg298(column_name) %}
    upper({{ column_name }})
{% endmacro %}

