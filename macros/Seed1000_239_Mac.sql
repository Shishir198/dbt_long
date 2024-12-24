-- macros/Seed1000_239_Mac.sql
{% macro convert_to_uppermg239(column_name) %}
    upper({{ column_name }})
{% endmacro %}

