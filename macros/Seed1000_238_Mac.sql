-- macros/Seed1000_238_Mac.sql
{% macro convert_to_uppermg238(column_name) %}
    upper({{ column_name }})
{% endmacro %}

