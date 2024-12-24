-- macros/Seed1000_292_Mac.sql
{% macro convert_to_uppermg292(column_name) %}
    upper({{ column_name }})
{% endmacro %}

